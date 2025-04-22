import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mono_financeiro/common/constants/app_colors.dart';

import '../../common/constants/app_text_styles.dart';

class MultiTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback? onPressed;

  const MultiTextButton(
      {
        super.key,
        required this.children,
        this.onPressed,
      }
  );

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 2,
        children: children,
      ),
    );
  }
}

