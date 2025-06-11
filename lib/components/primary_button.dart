import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';

class PrimaryButton extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;
  const PrimaryButton({
    super.key,
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (BuildContext context, store) {
        return SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(value),
          ),
        );
      },
    );
  }
}
