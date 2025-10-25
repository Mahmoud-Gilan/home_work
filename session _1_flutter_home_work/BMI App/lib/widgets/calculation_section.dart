import 'package:flutter/material.dart';
import 'package:session_3_flutter/screens/result_screen.dart';

class CalculationSection extends StatelessWidget {
  final double height;
  final double weight;
  const CalculationSection({
    super.key,
    required this.height,
    required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          double bmi = weight / ((height / 100) * (height / 100));
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: LinearBorder(),
          backgroundColor: Color(0xFFEB1555),
        ),
        child: Text(
          'CALCULATE',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
