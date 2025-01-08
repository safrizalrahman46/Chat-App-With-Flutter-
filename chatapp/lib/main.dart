import 'package:chatapp/core/utils/route_utils.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/ui/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context, child) => const MaterialApp(
        onGenerateRoute: RouteUtils.onGenerateRoute,
        home: SplashScreen(),
      ),
    );
  }
}
