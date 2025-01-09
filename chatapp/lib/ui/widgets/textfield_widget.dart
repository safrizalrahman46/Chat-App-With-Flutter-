import 'package:chatapp/core/constants/colors.dart';
import 'package:chatapp/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key, this.focusNode,this.hintText,this.onChanged
  });

  final void Function(String)? onChanged;
  final String? hintText;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: grey.withOpacity(0.1),
        hintText: hintText,
        hintStyle: body.copyWith(color: grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none),
      ),
    );
  }
}