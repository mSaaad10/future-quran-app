import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/home_screen.dart';
import 'package:quran_app/utils/image_utils.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:2 ),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },);
    return Image.asset(getImagePathByName('splash_screen.png'), fit: BoxFit.fill,);
  }
}
