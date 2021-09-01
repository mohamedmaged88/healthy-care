import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';

class CustomTextRich extends StatelessWidget {
  final String resultText;
  final String hText;
  final String minuteText;
  final String mText;

  const CustomTextRich({
    Key? key,
    required this.resultText,
    required this.hText,
    required this.minuteText,
    required this.mText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: resultText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2.0,
                  color: AppColors.lightblack,
                ),
              ],
            ),
          ),
          TextSpan(
            text: hText,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white60,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: minuteText,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2.0,
                  color: AppColors.lightblack,
                ),
              ],
            ),
          ),
          TextSpan(
            text: mText,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white60,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
