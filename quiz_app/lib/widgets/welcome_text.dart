import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Good morning,',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 4),
          Text(
            'New topic is waiting',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
