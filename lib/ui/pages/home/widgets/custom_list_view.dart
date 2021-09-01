import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthycare/core/constants/colors.dart';

class CustomListView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final Widget textRich;

  const CustomListView({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.textRich,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white.withOpacity(0.1),
              elevation: 0,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 12,
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.1),
                  child: FittedBox(
                    child: SvgPicture.asset(
                      iconPath,
                      // color: AppColors.background,
                      height: 22,
                      width: 22,
                    ),
                  ),
                ),
                title: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 2.0,
                        color: AppColors.lightblack,
                      ),
                    ],
                  ),
                ),
                subtitle: Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Container(
                  child: textRich,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
