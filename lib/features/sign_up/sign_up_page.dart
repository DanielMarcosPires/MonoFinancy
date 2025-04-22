import 'package:flutter/material.dart';
import 'package:mono_financeiro/Widget/CustomButton/CustomButton.dart';
import 'package:mono_financeiro/Widget/CustomTextButton/CustomTextButton.dart';

import 'package:mono_financeiro/common/constants/app_colors.dart';
import 'package:mono_financeiro/common/constants/app_text_styles.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
              Text(
      "Spend Smarter",
      textAlign: TextAlign.center,
      style:
          AppTextStyles.mediumText.copyWith(color: AppColors.greenlightTwo),
              ),
              Text(
      "Save More",
      textAlign: TextAlign.center,
      style:
          AppTextStyles.mediumText.copyWith(color: AppColors.greenlightTwo),
              ),
              Expanded(child: Image.asset("assets/images/sign_up_image.png")),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.greenlightTwo),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.greenlightTwo),
                        ),
                        labelText: "Your Name",
                      ),
                    )
                  ],
                ),
              ),
              Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 16.0,
        bottom: 4.0,
      ),
      child: CustomButton(
        text: "Get Started",
        onPressed: () {},
      ),
              ),
              MultiTextButton(children: [
      Text("Already have account?",
          style: AppTextStyles.smallText.copyWith(color: AppColors.grey)),
      Text("Log In",
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.greenlightTwo)),
              ])
            ]),
    );
  }
}
