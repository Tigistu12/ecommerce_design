import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:my_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:my_ecommerce_app/utils/popups/loaders.dart';

class LoginController extends GetxController{

  // variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
   final email = TextEditingController();
   final password = TextEditingController();
   GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

   @override
   void onInit(){
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text =localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
   }

   // -- email and passwordv signin
   Future<void> emailAndPasswordSignIn()async{
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);
      
      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }
      // Form validation
      if(!loginFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }
      // save data if Remember me is selected
      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // login user using email & password authentication
      final UserCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      
      // remove loader
      TFullScreenLoader.stopLoading();

      // redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e){
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    }
   }
}