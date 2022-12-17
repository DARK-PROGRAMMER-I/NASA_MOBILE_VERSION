
import 'package:flutter/material.dart';

datePicker({BuildContext? context, DateTime? initDate}){
  return showDatePicker(
      context: context!,
      initialDate: initDate != null? initDate : DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
  );
}