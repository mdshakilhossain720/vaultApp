
import 'package:get/get.dart';
import 'package:vaultapp/calcuatecontroller/calcuated_controller.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ClacuatedController());
  }

}