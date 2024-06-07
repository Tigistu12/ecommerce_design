import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'app.dart';
import 'firebase_options.dart';
import 'package:my_ecommerce_app/data/repositories/user/user_repository.dart';

//Entry point of Flutter App
Future<void> main() async {
// Widgets Binding
final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

// -- Getx Local Storage
await GetStorage.init();

//--  Await Splash until other items load
FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

//-- initialize firebase and authentication repository
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
(FirebaseApp value) => Get.put(AuthenticationRepository()),
);

  Get.put(UserRepository());

//Load all the Material Design / Themes / Localizations / Bindings

  runApp(App());

}


