import 'package:chatapp/core/constants/styles.dart';
import 'package:chatapp/ui/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.sw * 0.05, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            30.verticalSpace,
            Text("Create Your Account", style: h),
            5.verticalSpace,
            const Text("Please Provide The Details"),
            24.verticalSpace,
            CustomTextfield(
              hintText: "Enter Name",
              onChanged: (p0) {},
            ),
            20.verticalSpace,
            CustomTextfield(
              hintText: "Enter Name",
              onChanged: (p0) {},
            ),
          ],
        ),
      ),
    );
  }
}
