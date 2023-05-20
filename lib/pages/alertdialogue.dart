// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigator.dart';

class LogoutAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Logout'),
      content: const Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          onPressed: () {
            // Perform logout logic here
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainNavigation()),
            );
          },
          child: const Text('No'),
        ),
      ],
    );
  }
}
