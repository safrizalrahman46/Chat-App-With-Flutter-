import 'dart:developer';

import 'package:chatapp/core/constants/colors.dart';
import 'package:chatapp/core/constants/string.dart';
import 'package:chatapp/core/constants/styles.dart';
import 'package:chatapp/core/extension/widget_extension.dart';
import 'package:chatapp/core/services/auth_service.dart';
import 'package:chatapp/ui/screens/auth/login/login_viewmodel.dart';
import 'package:chatapp/ui/widgets/button_widget.dart';
import 'package:chatapp/ui/widgets/textfield_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewmodel(AuthService()),
      child: Consumer<LoginViewmodel>(builder: (context, model, _) {
        return Scaffold(
          body: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 1.sw * 0.05, vertical: 10.h),
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
                  onChanged: model.setEmail,
                ),
                20.verticalSpace,
                CustomTextfield(
                  hintText: "Enter Password",
                  onChanged: model.setPassword,
                ),
                30.verticalSpace,
                CustomButton(
                  onPressed: () async {
                    try {
                      await model.login();
                      context.showSnackbar("User Logged In SuccesFully");
                    }
                    on FirebaseAuthException catch(e){
                      context.showSnackbar(e.toString());
                    }
                    catch (e) {
                      context.showSnackbar(e.toString());
                    }
                    // log("Pressd");
                  },
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
      }),
    );
  }
}
