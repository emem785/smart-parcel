import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        final String count = state.maybeWhen(
          orElse: () => '0',
          notificationAdded: (notifications) => notifications.length.toString(),
        );

        return SizedBox(
          height: 18,
          width: 40,
          child: Stack(
            children: [
              IconButton(
                onPressed: () => context.router.push(const NotificationRoute()),
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Positioned(
                right: 3,
                top: 5,
                child: Opacity(
                  opacity: count == '0' ? 0 : 1,
                  child: ClipOval(
                    child: Container(
                      height: 15,
                      width: 15,
                      color: const Color(0xFFF58C4B),
                      child: Center(
                        child: Text(
                          count,
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
