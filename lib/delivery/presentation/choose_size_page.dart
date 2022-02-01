import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';
import 'package:smart_parcel/payment/presentation/size_tile.dart';

class ChooseSizePage extends StatelessWidget {
  const ChooseSizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentBloc>(),
      child: const ChooseSizeBody(),
    );
  }
}

class ChooseSizeBody extends HookWidget {
  const ChooseSizeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibility = useState(0.0);
    final paymentBloc = context.read<PaymentBloc>();
    useEffect(() {
      paymentBloc.add(const PaymentEvent.getCards());
    }, []);
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<PaymentBloc>(context)
            .add(const PaymentEvent.getCards());
        visibility.value = 0.0;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<PaymentBloc, PaymentState>(
            builder: (context, state) {
              final loading = state.maybeMap(
                orElse: () => false,
                loading: (v) => true,
              );
              return Visibility(
                visible: loading,
                child: const LinearProgressIndicator(
                  backgroundColor: Color(0xFFFAFAFA),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text("Select preferred SmartParcel Box size"),
          ),
          Expanded(
            child: BlocConsumer<PaymentBloc, PaymentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  cardsRetreived: (cards) =>
                      _SizesList(visibility: visibility, cards: cards),
                );
              },
              listener: (context, state) {
                state.maybeMap(
                  orElse: () => 1,
                  error: (value) =>
                      paymentBloc.paymentUseCases.showErrorUseCase(
                    context: context,
                    message: value.failure.message,
                  ),
                  cardsRetreived: (v) async {
                    await Future.delayed(const Duration(milliseconds: 50));
                    visibility.value = 1;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SizesList extends StatelessWidget {
  final List<BankCard> cards;
  final ValueNotifier<double> visibility;
  const _SizesList({
    Key? key,
    required this.visibility,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: visibility.value,
      child: cards.isNotEmpty
          ? ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final cardItem = cards[index];
                return SizeItem(
                  card: cardItem,
                  onPressed: () {},
                );
              },
            )
          : const Center(
              child: Text(
                "There are currently no sizes configured",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
