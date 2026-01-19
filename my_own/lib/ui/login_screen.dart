import 'package:flutter/material.dart';
import 'package:my_own/core/theme/colors.dart';
import 'package:my_own/core/theme/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginScreen', style: TextStyles.font16WhiteSemiBold),
        centerTitle: true,
        backgroundColor: ColorsManager.mainBlue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Center(child: Text('Login Screen')),
    );
  }
}
