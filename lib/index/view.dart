import 'package:bruno/bruno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final logic = Get.put(IndexLogic());
  final state = Get.find<IndexLogic>().state;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "首页",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "接单",
              ),
              Tab(
                text: "抢单",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            child: Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://img.zcool.cn/community/0102215fd09b1311013ee04d550cd2.jpg?x-oss-process=image/resize,m_fill,w_160,h_160,limit_0/auto-orient,1/sharpen,100/format,webp/quality,q_100",
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          "朝和月",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        height: 25,
                                      ),
                                      Container(
                                        child: Text(
                                          "3分钟前",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Text(""),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "点餐小程序开发",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "¥1000",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BrnStateTag(
                                tagText: 'App',
                                tagState: TagState.failed,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              BrnStateTag(
                                tagText: '小程序',
                                tagState: TagState.failed,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              BrnStateTag(
                                tagText: 'Web',
                                tagState: TagState.failed,
                              ),
                            ],
                          ),
                          Row(
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    color: Colors.white,
                    height: 150,
                    width: double.infinity,
                    child: Text(""),
                  ),
                ],
              ),
            ),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
