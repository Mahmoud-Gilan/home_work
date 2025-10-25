import 'package:flutter/material.dart';

Widget customWeightAgeCard({
  required String nametext,
  required String valuetext,
  required VoidCallback onAdd,
  required VoidCallback onRemove,
}) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFF171730),
      borderRadius: BorderRadius.circular(12),
    ),
    width: 170,
    height: 170,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nametext,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Text(
          valuetext,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: FloatingActionButton(
                heroTag: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: const Color(0xFF4b4e5f),
                onPressed: onRemove,
                child: const Icon(Icons.remove, color: Colors.white, size: 30),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 50,
              height: 50,
              child: FloatingActionButton(
                heroTag: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: const Color(0xFF4b4e5f),
                onPressed: onAdd,
                child: const Icon(Icons.add, color: Colors.white, size: 30),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
