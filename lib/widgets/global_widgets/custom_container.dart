
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/utils/colors.dart';

class CustomFigure extends StatelessWidget {
  const CustomFigure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),

      child: CustomPaint(
        painter: Figure(),
      ),

    );
  }
}

class Figure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size,) {
    final paint = new Paint();
    paint.color = AppColors.kMianColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = new Path();

    // Drawing triangle
    path.moveTo(0, 0 );
    path.lineTo(size.width ,0);
    path.lineTo(0, size.height);
    path.lineTo(0, 0 );

    //path.moveTo(0, size.height * 0.3);
//     path.lineTo(size.width * 0.5, 40.h);
//     path.lineTo(0, 40.h);
//     path.lineTo(0, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
