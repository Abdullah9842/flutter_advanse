import 'package:flutter/material.dart';
import 'package:my_own/core/theme/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By signing up, you agree to our ',
        style: TextStyles.font14GrayRegular,
        children: <TextSpan>[
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
