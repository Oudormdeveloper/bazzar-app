import 'package:bazzar/core.dart';

class MasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterController>(
      () => MasterController(),
    );
  }
}
