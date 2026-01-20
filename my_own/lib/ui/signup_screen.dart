import 'package:flutter/material.dart';
import 'package:my_own/core/helpers/spacing.dart';
import 'package:my_own/core/theme/styles.dart';
import 'package:my_own/core/widgets/app_Text_button.dart';
import 'package:my_own/core/widgets/app_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(15),
                AppTextFormField(hintText: "Email"),
                verticalSpace(15),
                AppTextFormField(
                  hintText: "Password",
                  isObscureText: _obscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),

                verticalSpace(15),
                AppTextFormField(hintText: 'Phone number'),
                verticalSpace(15),
                AppTextButton(
                  buttonText: "Create account",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
