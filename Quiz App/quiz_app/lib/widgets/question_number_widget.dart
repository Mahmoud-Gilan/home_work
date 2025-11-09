import 'package:flutter/material.dart';

class QuestionNumberWidget extends StatelessWidget {
  final String questionNumbber;
  const QuestionNumberWidget({super.key, required this.questionNumbber});

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
          SizedBox(
            width: 38,
            height: 38,
            child: Image.asset('assets/images/QLogo.png'),
          ),
          Center(
            child: Text(
              questionNumbber,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
