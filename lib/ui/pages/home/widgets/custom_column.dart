import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';

class CustomColumn extends StatelessWidget {
  final String status;

  const CustomColumn({Key? key, required this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              status == 'walking'
                  ? Icons.directions_walk
                  : status == 'stopped'
                      ? Icons.accessibility_new
                      : Icons.error,
              size: 47,
              color: AppColors.background,
            ),
            Center(
              child: Text(
                status,
                style: status == 'walking' || status == 'stopped'
                    ? TextStyle(
                        fontSize: 22,
                        color: AppColors.background,
                        fontWeight: FontWeight.bold,
                      )
                    : TextStyle(
                        fontSize: 22,
                        color: AppColors.background,
                        fontWeight: FontWeight.bold,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
