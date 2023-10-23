import 'package:bloc/bloc.dart';
import 'package:easy_ware/src/features/authentication/data/data_user_account.dart';
import 'package:easy_ware/src/features/authentication/domain/user_account.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      emit(AuthLoading());
      DataUserAccount.setDataUserAccountToStorage(event.userAccount);
      UserDataRegister.setUserAccountRegister(event.isRegister);
      await Future.delayed(const Duration(seconds: 2));
      emit(
        AuthSucces(
          userAccount: event.userAccount,
          isRegister: event.isRegister,
        ),
      );
    });
  }
}
