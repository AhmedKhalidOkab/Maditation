import 'package:flutter/material.dart';

class textIocn extends StatelessWidget {
  final bool isSelected;
  final Icon icon;
  final String text;
  final String timeFormat;
  const textIocn({
    Key? key,
    required this.text,
    required this.timeFormat,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: isSelected ? Colors.black : Colors.grey.withOpacity(.5)),
        ),
        Text(
          timeFormat,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
