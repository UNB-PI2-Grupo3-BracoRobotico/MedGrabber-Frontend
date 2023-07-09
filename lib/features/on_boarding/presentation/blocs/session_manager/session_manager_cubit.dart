import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/on_boarding/domain/usecases/get_signed_user.dart';
import 'package:grabber/features/on_boarding/domain/usecases/sign_out.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/stockist.dart';

part 'session_manager_cubit.freezed.dart';
part 'session_manager_state.dart';

@lazySingleton
class SessionManagerCubit extends Cubit<SessionManagerState> {
  final GetSignedUser _getSignedUser;
  final SignOut _signOut;
  SessionManagerCubit({
    required GetSignedUser getSignedUser,
    required SignOut signOut,
  })  : _signOut = signOut,
        _getSignedUser = getSignedUser,
        super(const SessionManagerState.initial());

  void checkAuthenticationStatus() {
    emit(const SessionManagerState.loading());

    Future.delayed(const Duration(milliseconds: 300));

    final userInformationOrFailure = _getSignedUser.call();

    emit(
      userInformationOrFailure.fold(
        () => const SessionManagerState.unauthenticated(),
        SessionManagerState.authenticated,
      ),
    );
  }

  void authenticateSession(Stockist user) {
    emit(
      SessionManagerState.authenticated(
        user,
      ),
    );
  }

  Future<void> signOutUser() async {
    emit(const SessionManagerState.loading());
    await _signOut();
    emit(const SessionManagerState.unauthenticated());
  }
}
