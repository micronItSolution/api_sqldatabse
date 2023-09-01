import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sapna_practical/model/event_model.dart';
import 'package:sapna_practical/screens/event_list_screen.dart';

import '../network/rest_apis.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() async {
    await Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => EventListScreen()),
        (Route<dynamic> route) => true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlutterLogo(size: 40)),
    );
  }
}
