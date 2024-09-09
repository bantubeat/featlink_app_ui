import 'package:flutter/material.dart';

class ProgressBarIndicator extends StatelessWidget {
  final int length;
  final int index;

  const ProgressBarIndicator({
    required this.index,
    required this.length,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.80) / length - 2;
    const margin = EdgeInsets.only(right: 1.0);
    const otherColor = Color.fromARGB(131, 0, 0, 0);
    return Positioned(
      top: 10,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          length,
          (i) => Container(
            margin: margin,
            width: width,
            height: 3.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: i <= index ? Colors.white : otherColor,
            ),
          ),
        ),
      ),
    );
  }
}
