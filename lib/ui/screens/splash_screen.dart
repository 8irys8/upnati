import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // if (FirebaseAuth.instance.currentUser != null) {
      //   context.router.replace(const MarketPlaceScreen());
      // } else {
      context.router.replace(const LoginScreen());
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkBlueLight,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.white),
                  child: Image.asset(Images.upnatiBigLogo)),
              const SizedBox(height: 16),
              Text(
                'סלוגן',
                style: AppTheme.regular(size: 55, color: AppColors.white),
              )
            ],
          ),
        ));
  }
}
