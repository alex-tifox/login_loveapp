import 'package:flutter/material.dart';

class LoveappSpacer extends StatelessWidget {
  const LoveappSpacer({
    Key? key,
    this.height = 18,
    this.width = 18,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
