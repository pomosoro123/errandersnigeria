import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCKv5CN6zGFqER7aR8KBKYs9CiR5ve2_A",
            authDomain: "erranders-nigeria-s8y399.firebaseapp.com",
            projectId: "erranders-nigeria-s8y399",
            storageBucket: "erranders-nigeria-s8y399.appspot.com",
            messagingSenderId: "866409949299",
            appId: "1:866409949299:web:5928d29a9d90369e662206"));
  } else {
    await Firebase.initializeApp();
  }
}
