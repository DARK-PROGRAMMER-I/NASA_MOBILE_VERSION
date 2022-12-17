import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/utils/colors.dart';

class DropDownField extends StatefulWidget {
  const DropDownField({Key? key}) : super(key: key);

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: EdgeInsets.only(bottom: 0.h, top: 5.h),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: DropdownButton(
        isDense: false,
        isExpanded: true,
        // value: 'hola',
          items: [
            DropdownMenuItem(child: Text("Earth - The Real Thing"), value: "hola", ),
            DropdownMenuItem(child: Text("Kapler Exo Planet"), value: "hola", ),
            DropdownMenuItem(child: Text("The Solar Sun"), value: "hola", ),
          ],
          onChanged: (val){}
      ),
    );
  }
}
