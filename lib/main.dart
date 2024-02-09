import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp/phone.dart';
import 'package:phone_otp/verify.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: const FirebaseOptions(
      apiKey: "AIzaSyB2cem9Kugqbt15BwMfsjE5AFWK_0Ijl3w",
      appId: "1:938490442656:android:7d06312b1117797cd4aac5",
      messagingSenderId: "938490442656",
      projectId: "core-calculator",
    ),
  );
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => const MyPhone(),
      'verify': (context) => const MyVerify()
    },
  ));
}
