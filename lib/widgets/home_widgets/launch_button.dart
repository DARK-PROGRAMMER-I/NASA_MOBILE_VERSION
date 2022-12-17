import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/utils/colors.dart';
import 'package:nasa_mission_control/widgets/global_widgets/semibold_text.dart';

class LaunchButton extends StatelessWidget {
  const LaunchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55.h,
      width: 200.w,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.kButtonColor,
              width: 2.w
            ),
        ),
        borderRadius: BorderRadius.circular(15.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SemiBoldText(name: "Launch Mission   ✔")
        ],
      ),
    );
  }
}
