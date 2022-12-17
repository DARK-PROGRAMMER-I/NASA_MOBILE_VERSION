import 'package:flutter/material.dart';

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
          CustomTextField(
            controller: _datCtr,
            hintText: "${_datCtr.text.isNotEmpty ? _datCtr.text : 'Pick Date'}",
            onChanged: (val){
            },
            onFieldSubmitted: (val){},
            obscure: false,
            leadingIcon: IconButton(
              onPressed: ()async{
                DateTime time = await datePicker(context: context);
                print(time.toLocal().toUtc());
              },
              icon: Icon(Icons.calendar_month, color: AppColors.kSecondryColor,),
            ),
          ),

        ],
      ),
    );
  }
}
