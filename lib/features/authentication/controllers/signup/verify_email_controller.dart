import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:my_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();

  // send email whenever verify screen appears & set timer for auto redirect.
  @override
  void onInit(){
    sendEmailVerification();
    setTimerForAutoRedirect();
 super.onInit();
  }

  // send Email verification
  sendEmailVerification() async{
    try {
       await AuthenticationRepository.instance.sendEmailVerification();
       TLoaders.successSnackBar(title: 'Email sent',message: 'Please check your inbox and verify your email');
    } catch(e){
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }

  // timer to automatically redirect an email verification
  setTimerForAutoRedirect(){
    Timer.periodic(
      Duration(seconds: 1),
     (timer)async{
   await FirebaseAuth.instance.currentUser?.reload();
   final user = FirebaseAuth.instance.currentUser;
   if(user?.emailVerified ?? false){
      timer.cancel();
      Get.off(
        () => SucessScreen(
          image: TImages.successfulRegistrationAnimation,
           title: TTexts.yourAccountCreatedTitle, 
           subTitle: TTexts.yourAccountCreatedSubTitle, 
           onPressed: ()=> AuthenticationRepository.instance.screenRedirect(),
           ),
      );
   }
    },
    );
  }

  // manually check if email verified
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(
        () => SucessScreen(
          image: TImages.successfulRegistrationAnimation, 
          title: TTexts.yourAccountCreatedTitle,
           subTitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
            )
      );
    }
  }
}