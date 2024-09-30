import 'package:car_agency/firebase_options.dart';
import 'package:car_agency/pages/login.dart';
import 'package:car_agency/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CarAgencyApp());
}

class CarAgencyApp extends StatefulWidget {
  const CarAgencyApp({super.key});

  @override
  State<CarAgencyApp> createState() => _CarAgencyAppState();
}

class _CarAgencyAppState extends State<CarAgencyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
