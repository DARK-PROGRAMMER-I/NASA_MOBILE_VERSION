import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_mission_control/utils/colors.dart';
import 'package:nasa_mission_control/widgets/global_widgets/bold_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroudColor,
        centerTitle: false,
        title: BoldText(name: "NASA Mission Control", size: 25.sm,),
        leading: Container(
            alignment: Alignment.topLeft,
            height: 20.h,
            width: 20.w,
            child: SvgPicture.asset("assets/svgs/planet_icon.svg")),
      ),
    );
  }
}
