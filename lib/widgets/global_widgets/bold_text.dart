import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../utils/colors.dart';


class BoldText extends StatelessWidget {
  final String name;
  final Color ?color ;
  final double ?size;
  final bool ? align;
  BoldText({required this.name, this.color, this.size, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      name ,
      style: TextStyle(
        fontSize: size == null? 15.sm : size,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
        letterSpacing: 1.w,
        color: color == null ? AppColors.kSecondryColor : color,
      ),
      textAlign: align == null ? TextAlign.start : TextAlign.center,
    );
  }
}