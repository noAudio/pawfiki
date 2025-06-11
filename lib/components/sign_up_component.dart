import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/change_login_state_action.dart';
import 'package:pawfiki/actions/change_terms_accepted_action.dart';
import 'package:pawfiki/components/primary_button.dart';
import 'package:pawfiki/components/secondary_button.dart';
import 'package:pawfiki/components/text_input.dart';
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
              child: TextInput(hintText: "Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextInput(hintText: "Username"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextInput(hintText: "Password", isObscured: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextInput(hintText: "Repeat password", isObscured: true),
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
            PrimaryButton(
              value: "Sign up",
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
            ),
            SecondaryButton(
              value: "I already have an account",
              onPressed: () {
                store.dispatch(
                  ChangeLoginStateAction(loginStateEnum: LoginStateEnum.signIn),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
