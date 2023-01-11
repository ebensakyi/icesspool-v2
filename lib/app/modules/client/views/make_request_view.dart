import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MakeRequestView extends GetView {
  const MakeRequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Make Request'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MakeRequestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
