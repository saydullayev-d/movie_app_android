// auth/presentation/screens/auth_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/auth/presentation/blocs/auth_bloc.dart';
import 'package:movies_app/auth/presentation/widgets/auth_form.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация'),
      ),
      body: Center(
        child: AuthForm(),
      ),
    );
  }
}
