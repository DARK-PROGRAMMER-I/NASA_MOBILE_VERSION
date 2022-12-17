import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/providers/navigation_provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 1753.h,
            width: 375.w,
            child: Image.asset("assets/png/background-large.jpg", fit: BoxFit.cover,),
          ),
          Consumer<NavigationProvider>(
              builder: (context, navProvider, widget){
                return
              },
          )
        ],
      ),
    );
  }
}
