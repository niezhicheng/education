import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CenterPage extends StatelessWidget {
  CenterPage({Key? key}) : super(key: key);

  final logic = Get.put(CenterLogic());
  final state = Get.find<CenterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
    );
  }
}
