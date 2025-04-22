
import 'package:flutter/material.dart';
import 'package:mono_financeiro/Widget/CustomButton/CustomButton.dart';
import 'package:mono_financeiro/common/constants/app_colors.dart';
import 'package:mono_financeiro/common/constants/app_text_styles.dart';

import '../../Widget/CustomTextButton/CustomTextButton.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 150.0,
                child: Image.asset("assets/images/man.png"),
              ),
            ),
            Container(
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    Text("Spend Smarter",
                        style: AppTextStyles.mediumText
                            .copyWith(color: AppColors.greenlightTwo)),
                    Text("Save More",
                        style: AppTextStyles.mediumText
                            .copyWith(color: AppColors.greenlightTwo)),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:
                          CustomButton(text: "Get Started", onPressed: () {}),
                    ),
                    MultiTextButton(children: [
                      Text(
                          "Already have an account?",
                          style: AppTextStyles.smallText.copyWith(
                              color: AppColors.grey
                          )
                      ),
                      Text(
                          "Sign In",
                          style: AppTextStyles.smallText.copyWith(
                              color: AppColors.greenlightTwo
                          )
                      ),
                    ], onPressed: (){},),
                    SizedBox(height: 5.0)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}
