import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_mission_control/utils/colors.dart';
import 'package:nasa_mission_control/widgets/global_widgets/bold_text.dart';
import 'package:nasa_mission_control/widgets/global_widgets/circular_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    height: 30.h,
                    width: 30.w,
                    child: SvgPicture.asset("assets/svgs/planet_icon.svg")),
                MyRotationAnimation(animationWidget: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    alignment: Alignment.topLeft,
                    height: 30.h,
                    width: 35.w,
                    child: SvgPicture.asset("assets/svgs/target.svg", color: AppColors.kIconColor,))
                ),
                BoldText(name: "NASA Mission Control", size: 20.sm,),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 2.h,
            width: 375.w,
            color: AppColors.kSecondryColor,
          )
        ],
      ),
    );
  }
}
