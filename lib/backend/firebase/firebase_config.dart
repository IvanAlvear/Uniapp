import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3GyICB5VdnEJ3Ud5gUNns1wxV9XX4zdc",
            authDomain: "uniapp-fc14a.firebaseapp.com",
            projectId: "uniapp-fc14a",
            storageBucket: "uniapp-fc14a.appspot.com",
            messagingSenderId: "437954498296",
            appId: "1:437954498296:web:00edb1726955400c94750d"));
  } else {
    await Firebase.initializeApp();
  }
}
