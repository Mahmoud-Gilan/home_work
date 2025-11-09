import 'package:flutter/material.dart';

class OptionsCard extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionsCard({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<OptionsCard> createState() => _OptionsCardState();
}

class _OptionsCardState extends State<OptionsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        height: 70,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          color: widget.isSelected ? const Color(0xFFA38BFF) : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Icon(
              widget.isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: const Color(0xFF2B0063),
              size: 35,
            ),
            const SizedBox(width: 16),
            Text(
              widget.text,
              style: TextStyle(
                color: const Color(0xFF2B0063),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
