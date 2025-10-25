import 'package:flutter/material.dart';
import 'package:session_3_flutter/widgets/calculation_section.dart';
import 'package:session_3_flutter/widgets/gander_section.dart';
import 'package:session_3_flutter/widgets/height_section.dart';
import 'package:session_3_flutter/widgets/weight_age_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentWeight = 60;
  int currentAge = 25;
  double currentHeight = 170;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF04061e),
          centerTitle: false,
          title: Text('BMI  CALCULATOR', style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          width: double.infinity,
          color: Color(0xFF04061e),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                GanderSection(),
                SizedBox(height: 30),
                HeightSection(
                  onHeightChanged: (H) => setState(() => currentHeight = H),
                ),
                SizedBox(height: 30),
                WeightAgeSection(
                  onAgeChanged: (A) => setState(() => currentAge = A),
                  onWeightChanged: (W) => setState(() => currentWeight = W),
                ),
                SizedBox(height: 30),
                CalculationSection(
                  weight: currentWeight,
                  height: currentHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
