// auth/presentation/blocs/auth_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';

enum AuthEvent { login }

class AuthState {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event == AuthEvent.login) {
      // Реализуйте здесь логику входа пользователя
    }
  }
}
