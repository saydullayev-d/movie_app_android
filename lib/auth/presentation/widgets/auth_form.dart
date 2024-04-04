// auth/presentation/widgets/auth_form.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/auth/presentation/blocs/auth_bloc.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Текстовое поле для ввода email
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            // Текстовое поле для ввода пароля
            TextFormField(
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Кнопка для входа
            ElevatedButton(
              onPressed: () {
                // Диспетчеризируйте событие входа пользователя
                BlocProvider.of<AuthBloc>(context).add(AuthEvent.login);
              },
              child: Text('Войти'),
            ),
          ],
        );
      },
    );
  }
}
