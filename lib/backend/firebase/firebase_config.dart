import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCrioDAqF8XrIiODluNY8jWZFVRrfS69Aw",
            authDomain: "fully-hack-y0ne8g.firebaseapp.com",
            projectId: "fully-hack-y0ne8g",
            storageBucket: "fully-hack-y0ne8g.firebasestorage.app",
            messagingSenderId: "213188181457",
            appId: "1:213188181457:web:872d0a120dc8f388faf4f0"));
  } else {
    await Firebase.initializeApp();
  }
}
