import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  final Function(double) onHeightChanged;
  const HeightSection({super.key, required this.onHeightChanged});
  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double height = 180.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF171730),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 360,
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toInt().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 25),
              thumbColor: Colors.pink,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              trackHeight: 2.0,
            ),
            child: Slider(
              value: height,
              min: 100.0,
              max: 210.0,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue;
                });
                widget.onHeightChanged(height);
              },
            ),
          ),
        ],
      ),
    );
  }
}
