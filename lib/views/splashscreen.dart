import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Navigate to HomePage after 5 seconds
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/yoodule_logo.png',
              ),
              const Text(
                'Yoodule',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              LoadingAnimationWidget.newtonCradle(
                color: Colors.black87,
                size: 60,
              ),
            ],
          ),
        ),
      );
}
