import 'package:get/state_manager.dart';

class LayoutIndexController extends GetxController {
  //varible
  RxInt selectedIndex = RxInt(0);

  //update index
  void updateIndex(int index) {
    selectedIndex.value = index;
  }
}
