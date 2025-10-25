import 'package:flutter/material.dart';

Widget buildFeatureItem(
  IconData icon,
  Color colorIcon,
  String title,
  String description,
) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    height: 70,
    width: 400,
    child: ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: colorIcon.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: colorIcon, size: 25),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        description,
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
    ),
  );
}

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Features',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
