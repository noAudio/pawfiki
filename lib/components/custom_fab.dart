import 'package:flutter/material.dart';
import 'package:pawfiki/screens/new_post.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const NewPost();
          },
        );
      },
      label: const Text('New Post'),
      icon: Icon(Icons.edit_outlined),
    );
  }
}
