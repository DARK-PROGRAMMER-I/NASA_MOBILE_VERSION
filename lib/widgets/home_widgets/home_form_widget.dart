import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_mission_control/widgets/global_widgets/semibold_text.dart';
import 'package:nasa_mission_control/widgets/home_widgets/drop_down_field.dart';

import '../../utils/colors.dart';
import 'date_picker_function.dart';
import 'date_text_field.dart';
import 'launch_button.dart';

class HomeFormWidget extends StatefulWidget {
  const HomeFormWidget({Key? key}) : super(key: key);

  @override
  State<HomeFormWidget> createState() => _HomeFormWidgetState();
}

class _HomeFormWidgetState extends State<HomeFormWidget> {
  TextEditingController _datCtr = TextEditingController();
  TextEditingController _missionCtr = TextEditingController();
  TextEditingController _rocketCtr = TextEditingController();
  DateTime? selectedTime ;
  @override
  void dispose() {
    // TODO: implement dispose
    _datCtr.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemiBoldText(name: "Launch Date: "),
              SizedBox(height: 5.h,),
              CustomTextField(
                controller: _datCtr,
                hintText: "${_datCtr.text.isNotEmpty ? _datCtr.text  : selectedTime != null? selectedTime?.toLocal().toString().substring(0, 10): 'yy/mm/dd'}",
                onChanged: (val){
                },
                onFieldSubmitted: (val){},
                obscure: false,
                leadingIcon: IconButton(
                  onPressed: ()async{
                    DateTime time = await datePicker(context: context);
                    setState(() {
                      selectedTime = time;
                    });
                  },
                  icon: Icon(Icons.calendar_month, color: AppColors.kSecondryColor,),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          SemiBoldText(name: "Mission Name: "),
          CustomTextField(
              controller: _missionCtr,
              hintText: "",
              onChanged: (val)=>{},
              onFieldSubmitted: (val)=>{},
              obscure: false
          ),
          SizedBox(height: 10.h,),
          SemiBoldText(name: "Rocket Type: "),
          CustomTextField(
              controller: _missionCtr,
              hintText: "Explorer IS1",
              onChanged: (val)=>{},
              onFieldSubmitted: (val)=>{},
              obscure: false
          ),

          SizedBox(height: 10.h,),
          SemiBoldText(name: "Destination Exoplanet: "),
          DropDownField(),
          SizedBox(height: 30.h,),
          LaunchButton()
        ],
      ),
    );
  }
}
