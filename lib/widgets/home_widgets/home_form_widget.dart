import 'package:flutter/material.dart';
import 'package:nasa_mission_control/widgets/global_widgets/semibold_text.dart';

import '../../utils/colors.dart';
import 'date_picker_function.dart';
import 'date_text_field.dart';

class HomeFormWidget extends StatefulWidget {
  const HomeFormWidget({Key? key}) : super(key: key);

  @override
  State<HomeFormWidget> createState() => _HomeFormWidgetState();
}

class _HomeFormWidgetState extends State<HomeFormWidget> {
  TextEditingController _datCtr = TextEditingController();
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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemiBoldText(name: "Launch Date: "),
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          )

        ],
      ),
    );
  }
}
