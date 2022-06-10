import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/singup_controller.dart';

class SingupView extends GetView<SingupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingupView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SingupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
