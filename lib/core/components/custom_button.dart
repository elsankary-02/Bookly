import 'package:flutter/material.dart';

import 'text_manger.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.colorText,
    this.borderRadius,
    this.fontSize,
  });
  final String text;
  final Color backgroundColor;
  final Color colorText;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: TextManger.textStyel18.copyWith(
            color: colorText,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
