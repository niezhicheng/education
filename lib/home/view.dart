import 'package:education/center/view.dart';
import 'package:education/index/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final logic = Get.put(HomeLogic());

  final state = Get.find<HomeLogic>().state;

  var allPages = [IndexPage(), CenterPage()];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
            //backgroundColor:Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flip_outlined),
            label: "我的",
            //backgroundColor:Colors.blue
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: allPages[currentIndex],
    );
  }
}
