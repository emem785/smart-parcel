import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';

class CardItem extends StatelessWidget {
  final BankCard card;
  final Function() onPressed;
  const CardItem({
    Key? key,
    required this.card,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentBloc = context.read<PaymentBloc>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: InkWell(
        onTap: () => onPressed(),
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
            trailing: IconButton(
              onPressed: () async {
                final shouldDelete =
                    await paymentBloc.paymentUseCases.showOptionUseCase(
                  title: "Delete Card",
                  context: context,
                  buttonText: "Delete",
                  alternativeButtonText: "Cancel",
                  content: "Are you sure you want to delete this card ?",
                );

                if (shouldDelete!) {
                  paymentBloc.add(PaymentEvent.deleteCard(card.id));
                }
              },
              icon: const Icon(Icons.delete_outline),
            ),
          ),
        ),
      ),
    );
  }
}
