import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_mission_control/providers/navigation_provider/navigation_provider.dart';
import 'package:nasa_mission_control/utils/colors.dart';
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
            builder: (context, navProvider, child) {
              return navProvider.pages[navProvider.index];
            },
          )
        ],
      ),
      bottomNavigationBar: Consumer<NavigationProvider>(
        builder: (context, navProvider, child) {
          return BottomNavigationBar(
            onTap: (int index) {
              navProvider.getIndex(index);
            },
            currentIndex: navProvider.index,
            backgroundColor: AppColors.kBackgroudColor,
            unselectedItemColor: AppColors.kWhiteColor,
            selectedItemColor: AppColors.kSecondryColor,
            selectedLabelStyle: TextStyle(
              fontSize: 15.sm ,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              letterSpacing: 1.w,
              color: AppColors.kSecondryColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10.sm ,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              letterSpacing: 1.w,
              color: AppColors.kWhiteColor,
            ),
            items: [
              BottomNavigationBarItem(
                label: "Launch",
                icon: SvgPicture.asset(
                  "assets/svgs/launch.svg", height: 20.h, width: 20.w,),
              ),
              BottomNavigationBarItem(
                label: "Upcoming",
                icon: SvgPicture.asset(
                  "assets/svgs/upcoming.svg", height: 20.h, width: 20.w,),
              ),
              BottomNavigationBarItem(
                label: "History",
                icon: SvgPicture.asset(
                  "assets/svgs/history.svg", height: 20.h, width: 20.w,),
              ),
            ],
          );
        }
      ),
    );
  }
}
