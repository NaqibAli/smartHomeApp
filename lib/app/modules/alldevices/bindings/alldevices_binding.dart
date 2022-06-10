import 'package:get/get.dart';

import '../controllers/alldevices_controller.dart';

class AlldevicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlldevicesController>(
      () => AlldevicesController(),
    );
  }
}
