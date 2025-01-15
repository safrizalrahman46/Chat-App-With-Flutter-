// import 'dart:math';
import 'dart:developer'; // Import this library
// import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<User?> signup(String email, String password) async {
    try {
      final authCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (authCredential.user != null) {
        log("User Created Succesfully");
        return authCredential.user!;
      }
      ;
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future login(String email, String password) async {
    try {
      final authCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (authCredential.user != null) {
        log("User Login Succesfully");
        return authCredential.user!;
      }
      ;
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}