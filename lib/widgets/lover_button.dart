import 'package:flutter/material.dart';

class LoverButton extends StatelessWidget {
  const LoverButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        primary: Theme.of(context).colorScheme.onSecondary,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        textStyle: Theme.of(context).textTheme.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        side: BorderSide.none,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Text(
        text,
      ),
    );
  }
}
