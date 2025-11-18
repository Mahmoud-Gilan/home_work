import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionNumberWidget extends StatelessWidget {
  final String questionNumber;
  final String questionImage;
  const QuestionNumberWidget({
    super.key,
    required this.questionNumber,
    required this.questionImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      width: 175,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF8e84ff),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: .8,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(questionImage, width: 32, height: 32),
          Center(
            child: Text(
              questionNumber,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
