import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';

class EditPhotoPage extends StatelessWidget {
  const EditPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<UserBloc>()),
        BlocProvider(create: (_) => getIt<AccountBloc>()),
      ],
      child: const EditPhotoBody(),
    );
  }
}

class EditPhotoBody extends HookWidget {
  const EditPhotoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageBytes = useState<Uint8List?>(null);
    final accountBloc = context.read<AccountBloc>();

    return Column(
      children: [
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () => accountBloc.add(AccountEvent.selectImage(
              context: context,
            )),
            child: Stack(
              children: [
                BlocConsumer<AccountBloc, AccountState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () => 1,
                      userModified: (v) => context.router.pop(),
                      imageSelected: (v) => imageBytes.value = v.imageData,
                      error: (v) => accountBloc.accountUseCases
                          .showErrorUseCase(
                              message: v.failure.message, context: context),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => const ImageContainer(imageData: null),
                      imageSelected: (v) =>
                          ImageContainer(imageData: v.imageData),
                    );
                  },
                  buildWhen: (previous, current) {
                    if (previous is AccountLoading &&
                        current is ImageSelected) {
                      return true;
                    }
                    return false;
                  },
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => LayoutConstants.padButton(ElevatedButton(
                onPressed: () {
                  if (imageBytes.value == null) {
                    accountBloc.accountUseCases.showErrorUseCase(
                      message: 'Please select an image',
                      context: context,
                    );
                    return;
                  }
                  accountBloc.add(AccountEvent.uploadPhoto(imageBytes.value!));
                },
                child: const Text('Upload'),
              )),
              loading: (v) => CommonWidgets.loading(),
            );
          },
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

class ImageContainer extends HookWidget {
  final Uint8List? imageData;
  const ImageContainer({
    Key? key,
    required this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.responsiveHeight(context, 200),
      width: Constants.responsiveWidth(context, 200),
      child: Stack(
        children: [
          ClipOval(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.3),
                BlendMode.lighten,
              ),
              child: Container(
                height: Constants.responsiveHeight(context, 250),
                width: Constants.responsiveWidth(context, 250),
                decoration: imageData != null
                    ? BoxDecoration(
                        image: DecorationImage(
                          image: MemoryImage(imageData!),
                          fit: BoxFit.fill,
                        ),
                      )
                    : const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Avatar.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Choose an Image",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
