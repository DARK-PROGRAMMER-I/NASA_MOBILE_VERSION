import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa_mission_control/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final Widget? leadingIcon;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.leadingIcon,
    required this.obscure,
    this.validatorFn,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.h, top: 5.h),
      //padding: EdgeInsets.only(left: 20.w, right: 10.w),
      height: 40.h,
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Color(0xFFF5F9FE)
            : AppColors.kWhiteColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: TextFormField(
          validator: validatorFn,
          obscureText: obscure,
          controller: controller,
          keyboardType: inputType,
          style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 30.w, right: 20.w),
            suffixIcon: leadingIcon ?? SizedBox(),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                color: Theme.of(context)
                    .colorScheme
                    .onPrimary
                    .withOpacity(0.6),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.transparent, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2), width: 2.0),
            ),
            border: OutlineInputBorder(),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.transparent, width: 2.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).primaryColor.withOpacity(0.2),
                  width: 2.0),
            ),
          ),
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}