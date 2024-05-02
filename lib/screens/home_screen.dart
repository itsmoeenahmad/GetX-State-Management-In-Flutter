import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx/screens/another_page.dart';
import 'package:getx/controllers/controller.dart';
import '../controllers/controller1.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController = Get.put(controller());
    final AppController1 = Get.put(controller1());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "GetX Learning",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Title of snackbar",
                    "Message of the snackbar",
                  );
                },
                child: const Text("Show Snackbar")),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(title: "Alert", content: Text("Content"));
                },
                child: const Text("Show DialogBox")),
            ElevatedButton(
                onPressed: () {
                  Get.off(another_page());
                },
                child: const Text("Move to next page")),
            const Text(
              "Example#01",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Column(
              children: [
                InkWell(
                    onTap: () {
                      AppController.increment();
                    },
                    child: const Icon(
                      Icons.add,
                      size: 50,
                    )),
                Obx(
                  () => Text(
                    "COUNT = ${AppController.count}",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
                InkWell(
                    onTap: () {
                      AppController.decrement();
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 50,
                    ))
              ],
            ),
            const Text(
              "Example#02",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Obx(
              ()=> Checkbox(
                value: AppController1!.check.value,
                onChanged: (newbool) {
                  print("Calling the change method");
                  AppController1.change(newbool!);
                },
                checkColor: Colors.white,
                activeColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
