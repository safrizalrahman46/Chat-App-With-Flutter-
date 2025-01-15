import 'dart:developer';

import 'package:chatapp/core/other/base_viewmodel.dart';
import 'package:chatapp/core/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupViewmodel extends BaseViewmodel {
  final AuthService _auth;

  SignupViewmodel(this._auth);

  String _name = "";
  String _email = "";
  String _password = "";
  String _confirmPassword = "";

  void setName(String value) {
    _name = value;
    notifyListeners();

    log("Name: $_name");
  }

  void setEmail(String value) {
    _email = value;
    notifyListeners();

    log("Email: $_email");
  }

  setPassword(String value) {
    _password = value;
    notifyListeners();

    log("Password: $_password");
  }

  void setConfirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();

    log("Confirm Password: $_confirmPassword");
  }

  signup() async {
    try {
      await _auth.signup(_email, _password);
    } on FirebaseAuthException catch (e) {
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    // _auth.signup(email, password)
  }
}
