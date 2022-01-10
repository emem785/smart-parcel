import 'package:flutter/material.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class StatusSkeleton extends StatelessWidget {
  const StatusSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.2),
              ),
              height: Constants.responsiveHeight(context, 80),
              width: Constants.responsiveWidth(context, 110),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.2),
              ),
              height: Constants.responsiveHeight(context, 80),
              width: Constants.responsiveWidth(context, 110),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.2),
              ),
              height: Constants.responsiveHeight(context, 80),
              width: Constants.responsiveWidth(context, 110),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class UserDetailsSkeleton extends StatelessWidget {
  const UserDetailsSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ClipOval(
              child: Container(
                height: Constants.responsiveHeight(context, 55),
                width: Constants.responsiveHeight(context, 55),
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.3),
                ),
                height: Constants.responsiveHeight(context, 15),
                width: Constants.responsiveHeight(context, 170),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.3),
                ),
                height: Constants.responsiveHeight(context, 15),
                width: Constants.responsiveHeight(context, 140),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
