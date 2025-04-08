import 'package:flutter/material.dart';
import 'package:mono_financeiro/common/constants/app_colors.dart';
import 'package:mono_financeiro/common/constants/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                height: 150.0,
                child: Image.asset("assets/images/man.png"),
              ),
            ),
            Text("Spend Smarter",
                style: AppTextStyles.mediumText.copyWith(color: AppColors.secondary)),
            Text("Save More",
                style: AppTextStyles.mediumText.copyWith(color: AppColors.secondary)),
            ElevatedButton(onPressed: (){}, child: Text("Get Started")),
            Text("Already have accoount? Log In",
                style: AppTextStyles.smallText.copyWith(color: AppColors.grey)),
           SizedBox(height: 60.0,)
          ],
        ),
      ),
    );
  }
}
