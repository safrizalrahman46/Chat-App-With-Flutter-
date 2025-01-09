import 'package:chatapp/core/constants/colors.dart';
import 'package:chatapp/core/constants/string.dart';
import 'package:chatapp/core/constants/styles.dart';
import 'package:chatapp/ui/widgets/button_widget.dart';
import 'package:chatapp/ui/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.sw * 0.05, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            40.verticalSpace,
            Text("Login", style: h),
            5.verticalSpace,
            Text(
              "Please Log In To Your Account!",
              style: body.copyWith(color: grey),
            ),
            // const Expanded(flex: 1, child: SizedBox.shrink()),
            30.verticalSpace,
            CustomTextfield(
              hintText: "Enter Email",
              onChanged: (p0) {},
            ),
            20.verticalSpace,
            CustomTextfield(
              hintText: "Enter Password",
              onChanged: (p0) {},
            ),
            30.verticalSpace,
            CustomButton(
              onPressed: () {},
              text: "Login",
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have account ?",
                  style: body.copyWith(color: grey),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, signup);
                    },
                    child: Text("Sign Up",
                        style: body.copyWith(fontWeight: FontWeight.bold)))
              ],
            ),
            // const Expanded(flex: 3, child: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
