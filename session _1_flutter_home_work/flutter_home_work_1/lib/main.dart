import 'package:flutter/material.dart';
import 'package:flutter_home_work_1/widget/custom_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              customBox(370, 200, Color.fromARGB(255, 217, 236, 246)),
              SizedBox(height: 20),
              Row(
                children: [
                  customBox(25, 25, Color(0xffdddddd)),
                  SizedBox(width: 10),
                  customBox(335, 25, Color(0xffdddddd)),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Color(0xffdddddd), thickness: 1),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [customBox(180, 45, Color(0xffa5d6a7))]),
                      SizedBox(height: 10),
                      Row(children: [customBox(180, 45, Color(0xffa5d6a7))]),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customBox(85, 100, Color(0xffffcc7f)),
                      SizedBox(width: 10),
                      customBox(85, 100, Color(0xffffcc7f)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                color: Color.fromARGB(159, 239, 217, 244),
                child: Row(
                  children: [
                    customBox(90, 100, Color(0xffe1bee8)),
                    SizedBox(width: 10),
                    Container(
                      color: Color(0xffe1bee8),
                      child: Column(
                        children: [
                          customBox(90, 45, Color(0xffcf94d9)),
                          SizedBox(height: 10),
                          customBox(90, 45, Color(0xffcf94d9)),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    customBox(90, 100, Color(0xffe1bee8)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  customBox(180, 60, Color(0xffb2dedb)),
                  SizedBox(width: 10),
                  customBox(180, 60, Color(0xff80cbc4)),
                ],
              ),
              SizedBox(height: 20),
              customBox(370, 50, Color(0xffe0e0e0)),
            ],
          ),
        ),
      ),
    );
  }
}
