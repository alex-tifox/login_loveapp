import 'package:flutter/material.dart';
import 'package:login_loveapp/common/extensions/string_validation.dart';
import 'package:login_loveapp/gen/assets.gen.dart';
import 'package:login_loveapp/models/login_result.dart';
import 'package:login_loveapp/providers/login_provider.dart';
import 'package:login_loveapp/widgets/loveapp_spacer.dart';
import 'package:login_loveapp/widgets/lover_button.dart';
import 'package:login_loveapp/widgets/lover_text_field.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> loginScreenKey = GlobalKey<ScaffoldState>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var loginState = Provider.of<LoginProvider>(context, listen: true);
    Future.delayed(const Duration(milliseconds: 200), () {
      if (loginState.state.result == const LoginResult.failure()) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
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
          ),
        );
      }
    });

    return Scaffold(
      key: loginScreenKey,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Consumer<LoginProvider>(
        builder: (_, provider, __) {
          return provider.state.result.when(
            inProgress: () => Center(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 61),
                    child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Theme.of(context).colorScheme.secondary,
                      ),
                      minHeight: 15,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
            notReady: () => _InitialLoginContent(
              provider: provider,
              repeatAttempt: false,
            ),
            failure: () => _InitialLoginContent(
              provider: provider,
              repeatAttempt: true,
            ),
          );
        },
      ),
    );
  }
}

class _InitialLoginContent extends StatefulWidget {
  const _InitialLoginContent({
    Key? key,
    required LoginProvider provider,
    required this.repeatAttempt,
  })  : _provider = provider,
        super(key: key);
  final LoginProvider _provider;
  final bool repeatAttempt;

  @override
  State<_InitialLoginContent> createState() => _InitialLoginContentState();
}

class _InitialLoginContentState extends State<_InitialLoginContent> {
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;

  bool emailProblem = true;
  bool passwordProblem = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
              controller: widget._provider.emailTextEditingController,
            ),
            const LoveappSpacer(),
            LoverTextField(
              hintText: 'Password',
              isPasswordField: true,
              controller: widget._provider.passwordTextEditingController,
            ),
            const LoveappSpacer(),
            Opacity(
              opacity: emailProblem || passwordProblem ? 0.6 : 1,
              child: Row(
                children: [
                  Expanded(
                    child: LoverButton(
                      onTap: () => emailProblem || passwordProblem
                          ? null
                          : widget._provider.attemptLogin(),
                      text: 'Login',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _emailTextListener() {
    setState(() {
      emailProblem = !emailTextEditingController.text.isValidEmail;
    });
  }

  void _passwordTextListener() {
    setState(() {
      passwordProblem = !(passwordTextEditingController.text.trim().length > 3);
    });
  }

  @override
  void initState() {
    emailTextEditingController = widget._provider.emailTextEditingController;
    passwordTextEditingController =
        widget._provider.passwordTextEditingController;

    emailTextEditingController.addListener(_emailTextListener);
    passwordTextEditingController.addListener(_passwordTextListener);

    if (widget.repeatAttempt) {
      passwordTextEditingController.text = '';
      emailProblem = !emailTextEditingController.text.isValidEmail;
    }

    super.initState();
  }

  @override
  void dispose() {
    emailTextEditingController.removeListener(_emailTextListener);
    passwordTextEditingController.removeListener(_passwordTextListener);

    super.dispose();
  }
}
