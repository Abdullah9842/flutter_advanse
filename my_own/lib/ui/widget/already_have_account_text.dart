import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_own/core/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  final VoidCallback onTap;

  const AlreadyHaveAccountText({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: TextStyles.font13GrayRegular.copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyles.font13BlueRegular.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w900,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
