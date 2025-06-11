import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/index.dart';
import 'package:pawfiki/components/primary_button.dart';
import 'package:pawfiki/components/secondary_button.dart';
import 'package:pawfiki/components/text_input.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/login_state_enum.dart';
import 'package:pawfiki/models/user.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        return Column(
          //   TODO: Swap with Logo
          children: [
            const Text("PAWFIKI LOGO"),
            const Text("Sign in with your details"),
            const TextInput(hintText: "Email"),
            const TextInput(hintText: "Password", isObscured: true),
            PrimaryButton(
              value: "Sign in",
              onPressed: () {
                // TODO: Swap to API call
                store.dispatch(
                  SetUserAction(
                    user: User(
                      username: "username",
                      email: "user@email.com",
                      password: "qwertyuiop",
                    ),
                  ),
                );
              },
            ),
            SecondaryButton(
              value: "Create account",
              onPressed: () {
                store.dispatch(
                  ChangeLoginStateAction(loginStateEnum: LoginStateEnum.signUp),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
