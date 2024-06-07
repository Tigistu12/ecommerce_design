import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/bindings/general_bindings.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
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
      initialBinding: GeneralBindings(),
      // show loader or circular progress indicator meanwhile Authentication Repository is deciding to show relevant screen. 
      home: const Scaffold(backgroundColor: TColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,))),
    );
  }
}