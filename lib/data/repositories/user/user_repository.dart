import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/features/personalization/models/user_model.dart';
import 'package:my_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:my_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:my_ecommerce_app/utils/exceptions/platform_exceptions.dart';

// repository class for user related operations.
class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  // function to save user data to firestore
  Future<void> saveUserRecord(UserModel user)async{
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

   // function to fetch user details based on user id
  

   // function to update user data in firestore
  

  //  update any field in specific users collection
  

  //  upload any image
  

  //  function to remove user data from firebase
  
}

