import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_mission_control/utils/colors.dart';
import 'package:nasa_mission_control/widgets/global_widgets/bold_text.dart';
import 'package:nasa_mission_control/widgets/global_widgets/circular_animation.dart';
import 'package:nasa_mission_control/widgets/global_widgets/semibold_text.dart';
import 'package:nasa_mission_control/widgets/home_widgets/date_text_field.dart';

import '../../widgets/home_widgets/date_picker_function.dart';
import '../../widgets/home_widgets/home_form_widget.dart';

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
                MyRotationAnimation(
                  animationWidget: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    alignment: Alignment.topLeft,
                    height: 30.h,
                    width: 35.w,
                    child: SvgPicture.asset("assets/svgs/target.svg", color: AppColors.kIconColor,),
                  )
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
          ),
          SizedBox(height: 40.h,),
          Container(
            height: 680.h,
            width: 300.w,
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  color: AppColors.kSecondryColor
                )
              )
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  SemiBoldText(name: "Schedule a mission launch for interstellar travel to one of the Kepler Exoplanets.", size: 14,),
                  SizedBox(height: 20.h,),
                  SemiBoldText(name: "Only confirmed planets matching the following criteria are available for the earliest scheduled missions:", size: 14,),
                  SizedBox(height: 25.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: SemiBoldText(name: "*  Planetary radius < 1.6 times Earth's radius"),
                  ),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: SemiBoldText(name: "*  Effective stellar flux > 0.36 times Earth's value and < 1.11 times Earth's value"),
                  ),
                  SizedBox(height: 20.h,),
                  HomeFormWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
