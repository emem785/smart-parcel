part of 'user_bloc.dart';

@immutable
@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.userRetreived(User user) = UserRetreived;
  const factory UserState.accountDeactivated() = AccountDeactivated;
  const factory UserState.userStreamRetreived(Stream<User> userStream) =
      UserStreamRetreived;
  const factory UserState.error(Failure failure) = UserError;
}
