import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:my_ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:my_ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:my_ecommerce_app/features/personalization/models/user_model.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:my_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:my_ecommerce_app/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  //variables
  final hidePassword = true.obs;  // Observable for hiding/showing password
  final privacypolicy = true.obs;  // Observable for privacy policy acceptance
  final email = TextEditingController();  // controller for email input
  final lastName = TextEditingController();  // controller for last name input
  final username = TextEditingController(); // controller for username input
  final password = TextEditingController(); // controller for password input
  final firstName = TextEditingController();  // controller for first name input
  final phoneNumber = TextEditingController();  // controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();  // form key for form validation

  //-- SIGNUP
  void signup() async{
    try{
      // start loading
      TFullScreenLoader.openLoadingDialog('we are processing your information...', TImages.docerAnimation);

      //check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        // Remove Loader
         TFullScreenLoader.stopLoading();
         return;
      }

      // Form Validation
      if(!signupFormKey.currentState!.validate()){
      // Remove Loader
         TFullScreenLoader.stopLoading();
         return;
      } 
      
      
      // Privacy Policy Check
      if(!privacypolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In Order to create account, you must have to read and accept the privacy policy & Terms of Use.'
          );
          return;
      }

      // Register user in the Firebase Authentication & save user data in the Firebase
        final UserCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: UserCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
        );
        
        
         final userRepository = Get.find<UserRepository>();
          await userRepository.saveUserRecord(newUser);
         
         // Remove Loader
         TFullScreenLoader.stopLoading();
         
      // Show Success Message
      TLoaders.successSnackBar(title: 'Congratulation', message: 'Your account has been created! Verify email to continue.');

      // Move to Verify Email Screen
      Get.to(()=> VerifyEmailScreen(email: email.text.trim(),));

    } catch (e){
      // remove loader
      TFullScreenLoader.stopLoading();
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } 
  } 
}