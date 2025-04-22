import 'package:flutter/material.dart';
import 'package:mono_financeiro/common/constants/app_colors.dart';
import 'package:mono_financeiro/common/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  CustomButton({super.key, required this.text, this.onPressed});

  final BorderRadius _borderRadius = BorderRadius.all(Radius.circular(24.0));

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: onPressed != null
                  ? AppColors.gradient
                  : AppColors.lightGradient),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style:
                  AppTextStyles.mediumText18.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
