import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/features/authentication/screens/login/login.dart';
//import 'package:get_storage/get_storage.dart';
class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

//variables
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;
 //update current index when page scroll
  void updatePageIndicator(index)=> currentPageIndex.value = index;

//jump to the specific dot selected page.
void dotNavigationClick(index){
  currentPageIndex.value = index;
 pageController.jumpTo(index); 
}

//update the current index and jump  to the next page 
void nextPage(){
  if(currentPageIndex.value ==2){
    Get.to(LoginScreen());
  } else{
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

}
//update the current index and jump to the last page.
void skipPage(){
  currentPageIndex.value = 2;
 pageController.jumpTo(2); 
}

}