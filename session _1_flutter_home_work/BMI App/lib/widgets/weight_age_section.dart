import 'package:flutter/material.dart';
import 'custom_weight_age_card.dart';

class WeightAgeSection extends StatefulWidget {
  final Function(double) onWeightChanged;
  final Function(int) onAgeChanged;

  const WeightAgeSection({
    super.key,
    required this.onWeightChanged,
    required this.onAgeChanged,
  });
  @override
  State<WeightAgeSection> createState() => _WeightAgeSectionState();
}

class _WeightAgeSectionState extends State<WeightAgeSection> {
  double weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customWeightAgeCard(
          nametext: 'Weight',
          valuetext: weight.toString(),
          onAdd: () {
            setState(() {
              weight++;
              widget.onWeightChanged(weight);
            });
          },
          onRemove: () {
            setState(() {
              if (weight > 1) weight--;
              widget.onWeightChanged(weight);
            });
          },
        ),
        const SizedBox(width: 30),
        customWeightAgeCard(
          nametext: 'Age',
          valuetext: age.toString(),
          onAdd: () {
            setState(() {
              age++;
              widget.onAgeChanged(age);
            });
          },
          onRemove: () {
            setState(() {
              if (age > 1) age--;
              widget.onAgeChanged(age);
            });
          },
        ),
      ],
    );
  }
}
