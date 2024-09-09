import 'package:flutter/material.dart';

class ProgressBarIndicator extends StatelessWidget {
  const ProgressBarIndicator({
    required this.images,
    required this.index,
    super.key,
  });

  final List<String> images;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(images.length, (i) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: i <= index
                  ? Colors.white
                  : const Color.fromARGB(131, 0, 0, 0),
            ),
            width: (MediaQuery.of(context).size.width * 0.80) /
                    images.length -
                2,
            height: 3.0,
            margin: const EdgeInsets.only(right: 1.0),
          );
        }),
      ),
    );
  }
}
