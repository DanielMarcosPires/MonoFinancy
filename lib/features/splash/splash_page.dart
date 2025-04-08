import 'package:flutter/material.dart';
import 'package:mono_financeiro/common/constants/app_colors.dart';
import 'package:mono_financeiro/common/constants/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColors.gradient)),
        child: Center(
          child: Text('finance',
              style: AppTextStyles.bigText
                  .copyWith(color: AppColors.white)),
        ),
      ),
    );
  }
}
