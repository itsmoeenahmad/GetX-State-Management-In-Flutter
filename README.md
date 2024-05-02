# getx

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



GetX Learning:

Introduction -> Convert the STL class to STF using GETx -

-> Import it's package & write the MaterialApp as GetMaterialApp


*Snack Bar
*Dialog Box
->Now we can easily make/code the above two things in our app, like: Get.snackbar.... OR Get.dialogbox....



*Page Routes
->We will also do routing(From one page to another) using Getx using

Get.to(AnotherPage());
Get.offAll(....); Never come back!


*Controllers
*Getx Variables
*State Managements

-> Make a separate class/folder for controller class which will be extends from GetxController.
-> Inside the controller write a variables which are ended with .obs and start with Rx..like: RxInt num = 0.obs;
OBS & RX will keep a value updated in all the project where the variable value is used.

Then inside the build method create an instance of the controller class for using it where you need /....like: AppController app_cont = Get.put(app_cont());

->For updating the values on a screen we wrap the widget inside the Obx(()=>),

