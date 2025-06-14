import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';

class CommentRepliesScreen extends StatelessWidget {
  const CommentRepliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (BuildContext context, store) {
        AppState state = store.state;
        return Scaffold(
          appBar: AppBar(title: const Text("Comment replies")),
          body:
              state.commentReplies.isNotEmpty
                  ? Column()
                  : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: const Text(
                        "You have no comment replies yet! 😸",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
        );
      },
    );
  }
}
