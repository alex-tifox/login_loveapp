import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_loveapp/gen/assets.gen.dart';

class LoverTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? errorText;
  final Iterable<String>? autofillHints;
  final bool isPasswordField;

  LoverTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.errorText,
    this.autofillHints,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  State<LoverTextField> createState() => _LoverTextFieldState();
}

class _LoverTextFieldState extends State<LoverTextField> {
  late bool _isObscure;
  Widget? suffixIcon;

  @override
  void initState() {
    _isObscure = widget.isPasswordField;

    super.initState();
  }

  void _toggleObscureVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.background,
        ),
        child: TextField(
          obscureText: _isObscure,
          autofillHints: widget.autofillHints,
          keyboardType: widget.keyboardType,
          controller: widget.controller,
          showCursor: true,
          cursorColor: Colors.white,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.only(
              top: widget.isPasswordField ? 14 : 0,
              left: 14,
            ),
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            hintText: widget.hintText,
            suffixIcon: widget.isPasswordField
                ? IconButton(
                    splashColor: Colors.transparent,
                    onPressed: _toggleObscureVisibility,
                    icon: _isObscure
                        ? Assets.svgs.passwordEyeHide.svg()
                        : Assets.svgs.passwordEyeShow.svg(),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
