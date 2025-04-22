import 'package:flutter/material.dart';
import 'package:mono_financeiro/features/onboarding/onboarding_page.dart';
import 'package:mono_financeiro/features/sign_up/sign_up_page.dart';
import 'package:mono_financeiro/features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage()
    );
  }
}
