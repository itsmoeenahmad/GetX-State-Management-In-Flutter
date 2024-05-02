import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class controller extends GetxController
{


  RxInt count = 0.obs ;


  void increment()
  {
    count++;
  }


  void decrement()
  {
    count--;
  }


}