import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/change_login_state_action.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/login_state_enum.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(decoration: InputDecoration(hintText: "Email")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Sign in"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  store.dispatch(
                    ChangeLoginStateAction(
                      loginStateEnum: LoginStateEnum.signUp,
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Create account"),
              ),
            ),
          ],
        );
      },
    );
  }
}
