
import 'package:get/get.dart';
import 'package:vaultapp/core/services/share_services.dart';
import 'package:vaultapp/utils/keys.dart';
import 'package:vaultapp/views/Calcautator/calcuator_scteen.dart';

import '../../views/GetStarted/get_started.dart';

class AppController extends GetxController{
  final sharedprefence=SharedServices();

  Future<bool>checkapps() async {
    return await sharedprefence.getData(SetType.bool, SharedKeys.Alredyopen)??false;

  }
checkState() async {
    final alreadyopen=await checkapps();

    if(alreadyopen==true){
      Get.offAll(CalcuatorScreen());
    }else{
      Get.offAll(GetStared());
    }
}

}