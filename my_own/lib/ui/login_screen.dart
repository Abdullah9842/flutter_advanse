import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_own/core/helpers/extensions.dart';
import 'package:my_own/core/helpers/spacing.dart';
import 'package:my_own/core/widgets/app_Text_button.dart';
import 'package:my_own/core/widgets/app_text_form_field.dart';
import 'package:my_own/ui/signup_screen.dart';
import 'package:my_own/ui/widget/already_have_account_text.dart';
import 'package:my_own/ui/widget/terms_and_conditions.dart';

import '../core/theme/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        textStyle: TextStyles.font16WhiteSemiBold,
                        buttonText: "Login",
                        borderRadius: 16,
                        onPressed: () {},
                      ),
                      verticalSpace(15),
                      TermsAndConditions(),
                      verticalSpace(15),
                      AlreadyHaveAccountText(
                        onTap: () => context.pushReplacement(SignupScreen()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
