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
      body: ListView(children: [
        Text(
          "Spend Smarter",
          textAlign: TextAlign.center,
          style:
              AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo),
        ),
        Text(
          "Save More",
          textAlign: TextAlign.center,
          style:
              AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo),
        ),
        Expanded(child: Image.asset("assets/images/sign_up_image.png")),
        Form(
          child: Column(
            children: [
              FormInput(
                  labelText: "Your Name",
                  hintText: "Mickael",
                keyboardType: TextInputType.name,
              ),
              FormInput(
                labelText: "your email",
                hintText: "example@gmail.com",
                keyboardType: TextInputType.emailAddress,
              ),
              FormInput(
                labelText: "password",
                hintText: "password",
                keyboardType: TextInputType.visiblePassword,
              ),
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
              style: AppTextStyles.smallText.copyWith(color: AppColors.darkGrey)),
          Text("Log In",
              style: AppTextStyles.smallText
                  .copyWith(color: AppColors.greenLightTwo)),
        ])
      ]),
    );
  }
}

class FormInput extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final int? maxLength;

  const FormInput({
    super.key,
    required this.labelText,
    required this.keyboardType,
    this.maxLength,
    this.padding, this.hintText
  });

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {

  final defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.greenLightTwo
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
            floatingLabelBehavior:
            (widget.hintText?.isEmpty ?? true)
                ? FloatingLabelBehavior.never
                : FloatingLabelBehavior.always,
          hintText: widget.hintText,
          labelText: widget.labelText.toUpperCase(),
          labelStyle: AppTextStyles.inputLabelText.copyWith(
            color: AppColors.grey
          ),
            border: defaultBorder,
          focusedBorder:defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder
        ),
      ),
    );
  }
}
