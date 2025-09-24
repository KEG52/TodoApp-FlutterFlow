import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAehkCC2jLKfbHWguJYUPv19KpEQu0yhuw",
            authDomain: "todo-g215q6.firebaseapp.com",
            projectId: "todo-g215q6",
            storageBucket: "todo-g215q6.firebasestorage.app",
            messagingSenderId: "393813152591",
            appId: "1:393813152591:web:8c5f182b166f67a0632b3a"));
  } else {
    await Firebase.initializeApp();
  }
}
