import 'package:chatapp_firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> setupFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}