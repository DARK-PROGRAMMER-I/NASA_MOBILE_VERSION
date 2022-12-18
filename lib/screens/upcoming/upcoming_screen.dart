import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class UpcommingScreen extends StatelessWidget {
  const UpcommingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      width: 300.w,
      decoration: BoxDecoration(
          border: Border.fromBorderSide(
              BorderSide(
                  color: AppColors.kSecondryColor
              )
          )
      ),
    );
  }
}
