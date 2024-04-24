// auth/presentation/widgets/auth_form.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/auth/presentation/blocs/auth_bloc.dart';
import 'package:movies_app/core/resources/app_colors.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
  builder: (context, state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: TextFormField(
            style: const TextStyle(
              fontSize: 18.0,
            ),
            decoration: InputDecoration(
              labelText: 'Логин',
              contentPadding: const EdgeInsets.only(left: 15.0, right: 15.0),
              filled: true,
              fillColor: AppColors.secondaryBackground,
              labelStyle: TextStyle(
                color: AppColors.secondaryText,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: TextFormField(
            style: const TextStyle(
              fontSize: 18.0,
            ),
            decoration: InputDecoration(
              labelText: 'Пароль',
              contentPadding: const EdgeInsets.only(left: 15.0, right: 15.0),
              filled: true,
              fillColor: AppColors.secondaryBackground,
              labelStyle: TextStyle(
                color: AppColors.secondaryText,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(AuthEvent.login);
          },
          child: const Text('Войти'),
        ),
      ],
    );
  },
);

  }
}
