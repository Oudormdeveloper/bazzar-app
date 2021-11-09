import 'package:bazzar/core.dart';

class GetStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStartController>(
      () => GetStartController(),
    );
  }
}
