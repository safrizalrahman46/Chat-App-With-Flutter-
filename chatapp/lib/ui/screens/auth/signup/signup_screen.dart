import 'package:chatapp/core/constants/colors.dart';
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
              hintText: "Enter Email",
              onChanged: (p0) {},
            ),
            20.verticalSpace,
            CustomTextfield(
              hintText: "Enter Password",
              onChanged: (p0) {},
            ),
            20.verticalSpace,
            CustomTextfield(
              hintText: "Confirm Password",
              onChanged: (p0) {},
            ),
            30.verticalSpace,
            SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: button),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: body.copyWith(color: white),
                    )))
          ],
        ),
      ),
    );
  }
}
