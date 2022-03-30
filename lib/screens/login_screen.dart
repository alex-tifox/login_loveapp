import 'package:flutter/material.dart';
import 'package:login_loveapp/gen/assets.gen.dart';
import 'package:login_loveapp/widgets/loveapp_spacer.dart';
import 'package:login_loveapp/widgets/lover_button.dart';
import 'package:login_loveapp/widgets/lover_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 62,
          left: 33,
          right: 33,
        ),
        child: Column(
          children: [
            Assets.svgs.applover.svg(
              height: 97 * 1.5,
              width: 97 * 1.5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 22,
                bottom: 39,
              ),
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            LoverTextField(
              hintText: 'Email address',
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
            ),
            const LoveappSpacer(),
            LoverTextField(
              hintText: 'Password',
              isPasswordField: true,
              controller: TextEditingController(),
            ),
            const LoveappSpacer(),
            Row(
              children: [
                Expanded(
                  child: LoverButton(
                    onTap: () {},
                    text: 'Login',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
