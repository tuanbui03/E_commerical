import 'package:e_commerical/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerical/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build (BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}