import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';

class ChooseCardPage extends StatelessWidget {
  const ChooseCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentBloc>(),
      child: const ChooseCardBody(),
    );
  }
}

class ChooseCardBody extends HookWidget {
  const ChooseCardBody({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Saved Cards",
              style: GlobalTheme.textTheme(context).headline6,
            ),
          ),
          Expanded(
            child: BlocConsumer<PaymentBloc, PaymentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  cardsRetreived: (cards) =>
                      _CardList(visibility: visibility, cards: cards),
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
          LayoutConstants.padButton(ElevatedButton(
            onPressed: () {
              context.router.push(PaymentRoute(bankCard: BankCard.empty()));
            },
            child: const Text("Pay with new card"),
          )),
          LayoutConstants.sizeBox(context, 32),
        ],
      ),
    );
  }
}

class _CardList extends StatelessWidget {
  final List<BankCard> cards;
  final ValueNotifier<double> visibility;
  const _CardList({
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
                return _CardItem(card: cardItem);
              },
            )
          : const Center(
              child: Text(
                "You currently have no cards stored",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final BankCard card;
  const _CardItem({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: InkWell(
        onTap: () {
          context.router.push(PaymentRoute(bankCard: card));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(7, 140, 140, 140),
                blurRadius: 8,
                spreadRadius: 7,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: ListTile(
            leading: card.cardBrand == CardBrand.visa
                ? SvgPicture.asset(
                    "assets/images/visa.svg",
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                    height: 11,
                  )
                : SvgPicture.asset(
                    "assets/images/master.svg",
                    fit: BoxFit.contain,
                    height: 23,
                  ),
            title: Text("**** **** **** ${card.last4}"),
          ),
        ),
      ),
    );
  }
}
