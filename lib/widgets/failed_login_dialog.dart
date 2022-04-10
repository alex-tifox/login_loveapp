import 'package:flutter/material.dart';

class FailedLoginDialog extends StatelessWidget {
  const FailedLoginDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        'Log in error',
        style: Theme.of(context).textTheme.headline4,
      ),
      content: Text(
        'There was an  error on login attempt. Try again.',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 10),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'OK',
            style: Theme.of(context).textTheme.button,
          ),
        )
      ],
    );
  }
}
