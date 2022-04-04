import 'package:flutter/material.dart';
import 'package:login_loveapp/gen/assets.gen.dart';
import 'package:login_loveapp/widgets/loveapp_spacer.dart';

class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.svgs.applover.svg(
              height: 97,
              width: 97,
            ),
            const LoveappSpacer(
              height: 57,
            ),
            const Text(
              'Success!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
