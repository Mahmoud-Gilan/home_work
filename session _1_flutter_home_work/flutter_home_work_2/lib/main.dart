import 'package:flutter/material.dart';
import 'widgets/build_feature_item.dart';
import 'widgets/build_quick_state_item.dart';

void main() {
  runApp(UiScreen());
}

class UiScreen extends StatelessWidget {
  const UiScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xFFfef7ff),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF8160b9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 150,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hello! 👋',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Try your best to build this ui',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 45,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Color(0xFF673ab8),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Quick States',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildQuickStateItem(
                      '1,234',
                      'Users',
                      Icons.group,
                      Colors.purple,
                    ),
                    SizedBox(width: 20),
                    buildQuickStateItem(
                      '4.8',
                      'Rating',
                      Icons.star,
                      Colors.orange,
                    ),
                    SizedBox(width: 20),
                    buildQuickStateItem(
                      '98%',
                      'Success',
                      Icons.trending_up,
                      Colors.blue,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                buildFeatureItem(
                  Icons.speed,
                  Colors.deepPurple,
                  'Fast Performance',
                  'Lighting fast app performance',
                ),
                SizedBox(height: 10),
                buildFeatureItem(
                  Icons.security,
                  Colors.blue,
                  'Secure',
                  'Your data is safe with us',
                ),
                SizedBox(height: 10),
                buildFeatureItem(
                  Icons.palette,
                  Colors.orange,
                  'Beautiful UI',
                  'Modern and clean design',
                ),
                SizedBox(height: 100),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 45,
                      width: 180,
                      child: Center(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 45,
                      width: 180,
                      child: Center(
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
