import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/utils/colors.dart';

class LaunchButton extends StatelessWidget {
  const LaunchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: 100,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.kButtonColor,
              width: 2.w

            ),
        )
      ),
    );
  }
}
