import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/domain/models/notification_message.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../infrastructure/common_mock_data.dart';

class MockContext extends Mock implements BuildContext {}

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Add Notification Event', () {
    blocTest<NotificationBloc, NotificationState>(
      'emits a notification added state',
      setUp: () => AuthTestSetup.setup(mockFailureResponse, 200),
      build: () => getIt<NotificationBloc>(),
      act: (bloc) =>
          bloc.add(const NotificationEvent.addnotification(RemoteMessage(
        notification: RemoteNotification(title: "test", body: "test"),
        data: {"message": "test"},
      ))),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const NotificationState.loading(),
        const NotificationState.notificationAdded([notificationMsg]),
      ],
    );
  });
  group('Remove Notification Event', () {
    blocTest<NotificationBloc, NotificationState>(
      'emits a notification removed state',
      setUp: () => AuthTestSetup.setup(mockFailureResponse, 200),
      build: () => getIt<NotificationBloc>(),
      act: (bloc) {
        bloc.notificationMessages.addAll([
          notificationMsg,
          NotificationMessage.fakeMsg(),
        ]);
        bloc.add(const NotificationEvent.removeNotification(1));
      },
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const NotificationState.loading(),
        const NotificationState.notificationRemoved([notificationMsg]),
      ],
    );
  });
  group('Remove All Notification Event', () {
    blocTest<NotificationBloc, NotificationState>(
      'emits a notification removed state with empty list',
      setUp: () => AuthTestSetup.setup(mockFailureResponse, 200),
      build: () => getIt<NotificationBloc>(),
      act: (bloc) {
        bloc.notificationMessages.addAll([
          notificationMsg,
          NotificationMessage.fakeMsg(),
        ]);
        bloc.add(const NotificationEvent.clearNotification());
      },
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const NotificationState.loading(),
        const NotificationState.notificationRemoved([]),
      ],
    );
  });
}
