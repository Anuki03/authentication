import 'dart:io';
import 'package:authentication/auth.dart';
import 'package:authentication/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCwKXSisutq3LCsB15180DVU3rOnfVTxPI",
              appId: "1:997877690306:android:dc17172d79be1c1e6ef05b",
              messagingSenderId: "997877690306",
              projectId: "authentication-a6336"),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const splashscreen(),
        '/auth': (context) => const Auth(),
      },
    );
  }
}
