import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';

class SizeItem extends StatelessWidget {
  final BankCard card;
  final Function() onPressed;
  const SizeItem({
    Key? key,
    required this.card,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              onTap: () => context.router.push(const ChooseCardRoute()),
              title: const Text(
                "Small (S)",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text("14cm x 50cm x 50cm"),
              trailing: Text(
                "₦200",
                style: GlobalTheme.getTextTheme()
                    .headline6
                    ?.copyWith(color: GlobalTheme.primaryColor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
