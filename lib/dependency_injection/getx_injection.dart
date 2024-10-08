import 'package:get/get.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home_controller/home_controller.dart';

void initGetx() {
  // ================== Global Controller ==================
  Get.lazyPut(() => HomeController(), fenix: true);
}
