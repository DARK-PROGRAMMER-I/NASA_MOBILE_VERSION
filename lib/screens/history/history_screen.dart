import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../widgets/global_widgets/bold_text.dart';
import '../../widgets/global_widgets/circular_animation.dart';
import '../../widgets/global_widgets/semibold_text.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

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
            height: 350.h,
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
                  SemiBoldText(name: "History of mission launches including SpaceX launches starting from the year 2006.", size: 14,),
                  SizedBox(height: 50.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SemiBoldText(name: "No. |", size: 10.sm,),
                      SemiBoldText(name: "Date  |", size: 10.sm,),
                      SemiBoldText(name: "Mission |", size: 10.sm,),
                      SemiBoldText(name: "Rocket |", size: 10.sm,),
                      SemiBoldText(name: "Destination", size: 10.sm,),
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 0.5.h,
                    width: 300.w,
                    color: AppColors.kSecondryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
