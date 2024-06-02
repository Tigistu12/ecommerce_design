import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:my_ecommerce_app/utils/theme/theme.dart';

//-- to setup themes initial bindings, any animations and much more using Material widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),

       
      
    );

  }
}