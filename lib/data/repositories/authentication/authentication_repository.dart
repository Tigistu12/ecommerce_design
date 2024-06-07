import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:my_ecommerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:my_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:my_ecommerce_app/navigation_menu.dart';
import 'package:my_ecommerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:my_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:my_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:my_ecommerce_app/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  //called from main.dart on app launch
  @override
  void onReady(){
    // remove the native splash screen
    FlutterNativeSplash.remove();
    //redirect to the appropriate screen
    screenRedirect();
  }
  
  // Function to show Relevant Screen
  screenRedirect() async{
    final user = _auth.currentUser;
    if(user != null){
      if(user.emailVerified){
        Get.offAll(() => NavigationMenu());
      } else{
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
   // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // check if it's the first time launching the app
    deviceStorage.read('IsFirstTime') != true
     ? Get.offAll(() => LoginScreen()) //redirect to Login Screen if not the first time
     : Get.offAll(() =>OnBoardingScreen());  //redirect to onBoarding Screen if it's the first time
    }

  }

  /*------------------email & password sign-in ---------------*/
  // [EmailAuthentication] -LOGIN
  Future<UserCredential> loginWithEmailAndPassword(String email, String password)async {
  try {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch(e){
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  } on FormatException catch(_){
    throw TFormatException();
  } on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  } catch(e){
    throw 'Something went wrong. Please try again';
  }
  }


  // [EmailAuthentication] - REGISTER
  Future<UserCredential> registerWithEmailAndPassword(String email, String password)async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw  TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  //[Emailverification]- MAIL VERIFICATION
  Future<void> sendEmailVerification() async{
      try{
        await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw  TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  // [ReAuthenticate] - ReAuthenticate user

  // [EmailAuthentication] - FORGET PASSWORD

  /*--------- Federated identity and social sign-in-------- */
  // [GoogleAuthentication] - Google

  // [FacebookAuthentication] - Facebook

  /*----------./end federated identity adn social sign-in-------- */
  
  // [LogoutUser] - valid for any authentication
  Future<void> logout() async{
    try {
     await FirebaseAuth.instance.signOut();
     Get.offAll(() => LoginScreen());
  } on FirebaseAuthException catch(e){
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch(e){
    throw TFirebaseException(e.code).message;
  } on FormatException catch(_){
    throw TFormatException();
  } on PlatformException catch(e){
    throw TPlatformException(e.code).message;
  } catch (e){
    throw 'Something went wrong. Please try again.';
  }
  }

  // DELETE USER - Remove user Auth and Firestore Account
}



