import 'package:flutter/material.dart';
import 'package:sapna_practical/screens/splash_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Sapna Practical',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
    );
  }
}

