import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcrzp6SbaK5Bz8SCKwqHASsJfdTGaG9g8",
            authDomain: "wheel-pilot.firebaseapp.com",
            projectId: "wheel-pilot",
            storageBucket: "wheel-pilot.appspot.com",
            messagingSenderId: "775246432834",
            appId: "1:775246432834:web:3200757fa89975cb14bbdb",
            measurementId: "G-73BTM8JY99"));
  } else {
    await Firebase.initializeApp();
  }
}
