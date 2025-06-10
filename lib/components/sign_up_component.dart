import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/change_login_state_action.dart';
import 'package:pawfiki/actions/change_terms_accepted_action.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/login_state_enum.dart';

class SignUpComponent extends StatelessWidget {
  const SignUpComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        AppState state = store.state;
        return Column(
          children: [
            //   TODO: Swap with logo
            const Text("PAWFIKI LOGO"),
            const Text("Create a new account"),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(decoration: InputDecoration(hintText: "Email")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "Repeat password"),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: state.isTermsAccepted,
                    onChanged: (isChecked) {
                      if (isChecked != null) {
                        store.dispatch(
                          ChangeTermsAccepted(isTermsAccepted: isChecked),
                        );
                      }
                    },
                  ),
                  Text("I agree to Pawfiki's terms and conditions."),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed:
                    state.isTermsAccepted
                        ? () {
                          store.dispatch(
                            ChangeLoginStateAction(
                              loginStateEnum: LoginStateEnum.signIn,
                            ),
                          );
                        }
                        : null,
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Sign up"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  store.dispatch(
                    ChangeLoginStateAction(
                      loginStateEnum: LoginStateEnum.signIn,
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("I already have an account"),
              ),
            ),
          ],
        );
      },
    );
  }
}
