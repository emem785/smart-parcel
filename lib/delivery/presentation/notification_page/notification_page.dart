import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/domain/models/notification_message.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationBloc>(),
      child: const NotificationBody(),
    );
  }
}

class NotificationBody extends HookWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationBloc = context.read<NotificationBloc>();
    return Scaffold(
      appBar: LayoutConstants.appBar(title: "Notifications", context: context),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            final List<NotificationMessage> notifications = state.maybeWhen(
              orElse: () => [],
              notificationAdded: (notifications) => notifications,
            );

            return notifications.isNotEmpty
                ? ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        key: Key(
                            "notification_tile: ${notifications[index].title}"),
                        contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(
                            color: Color(0xFF27930C),
                            width: 1,
                          ),
                        ),
                        tileColor: const Color(0xFFDFF0E7),
                        title: Text(
                          notifications[index].title,
                          style: const TextStyle(fontSize: 14),
                        ),
                        subtitle: Text(
                          notifications[index].dataMsg,
                          style: const TextStyle(fontSize: 12),
                        ),
                        trailing: IconButton(
                          onPressed: () => notificationBloc.add(
                            NotificationEvent.removeNotification(index),
                          ),
                          icon: const Icon(Icons.cancel_outlined),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text(
                      "You currently have no notification's",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
