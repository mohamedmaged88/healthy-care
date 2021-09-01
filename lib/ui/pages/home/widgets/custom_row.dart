import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/core/constants/icons.dart';

class CustomRow extends StatefulWidget {
  CustomRow({Key? key}) : super(key: key);

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              print('resume >>>');
            },
            child: SvgPicture.asset(
              pauseIconSvg,
              color: AppColors.background,
              height: 35,
              width: 35,
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          SvgPicture.asset(
            startIconSvg,
            color: AppColors.background,
            height: 35,
            width: 35,
          ),
          // SizedBox(
          //   width: 10,
          // ),
          SvgPicture.asset(
            resetIconSvg,
            color: AppColors.background,
            height: 35,
            width: 35,
          ),
        ],
      ),
    );
  }
}
