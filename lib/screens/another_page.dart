import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';

class another_page extends StatelessWidget {
  const another_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Page"),
        centerTitle: true,
      ),
      body: Center(
        child:ElevatedButton(
          onPressed: (){
            Get.off(home_screen());
          },
          child: Text("Move back"),
        ),
      ),
    );
  }
}
