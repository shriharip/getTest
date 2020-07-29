import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/controllers/controller.dart';

class HomeView extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: obx(() => Text("hi".tr.trArgs(['${c.etext.string}'])))),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onChanged: c.textChanged,
              decoration: InputDecoration(
                  labelText: 'Name', border: OutlineInputBorder()),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.settings_brightness), onPressed: c.changeTheme),
    );
  }
}
