import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/utils/popups/loaders.dart';
// manage the network connectivity status and provides methods to check and handle connectivity changes.
class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();
  
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  // initialize the network manager and set up a stream to continuall check the connection status.
  @override
  void onInit(){
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // update the connection status based on changes in connectivity and show  a relevant popup for no internet connection.
  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async{
    _connectionStatus.value = result.last;
    if(_connectionStatus.value == ConnectivityResult.none){
      TLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  // check the internet connection status.
  // Return 'true' if connected, 'false' otherwise
  Future<bool> isConnected() async{
    try{
      final result = await _connectivity.checkConnectivity();
      if(result == ConnectivityResult.none){
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_){
      return false;
    }
  }
  // dispose or close the active connectivity stream.
  
  void onClose(){
    super.onClose();
    _connectivitySubscription.cancel();
  }
}

