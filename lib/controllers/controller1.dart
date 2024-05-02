import 'package:get/get.dart';

class controller1 extends GetxController
{
   RxBool check = false.obs;



  void change(bool newbool)
  {
    print("Before Check is = ${check}");
    check.value = newbool;
    print("After Check is = ${check}");
  }





}