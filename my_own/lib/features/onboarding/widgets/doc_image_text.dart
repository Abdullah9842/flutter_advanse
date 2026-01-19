import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own/core/theme/styles.dart';

class DocImageText extends StatelessWidget {
  const DocImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/docdoc_low_opectiy.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.2)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/doc.png'),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBoldWeight.copyWith(
              height: 1.4),
          ),
        ),
      ],
    );
  }
}
