import 'package:flutter/material.dart';
import 'package:food/core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasFullWidth;
  final Color backgroundColor;
  final Color forgroundColor;
  final String text;
  final bool isOutlinedButton;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.hasFullWidth = false,
    this.backgroundColor = AppColors.primary,
    this.forgroundColor = AppColors.white,
    this.isOutlinedButton = false,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hasFullWidth ? double.infinity : null,
      child: isOutlinedButton
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: backgroundColor,
                side: BorderSide(
                  color: backgroundColor,
                  width: 1,
                ),
              ),
              onPressed: onTap,
              child: Text(
                text,
              ),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: forgroundColor,
              ),
              onPressed: onTap,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
