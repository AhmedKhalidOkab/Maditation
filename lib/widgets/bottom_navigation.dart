import 'package:flutter/material.dart';
import 'package:maditation_app/widgets/blur_effects.dart';

class ButtomNavigationBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final String text;
  const ButtomNavigationBarIcon({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlurEffects(
          borderRadius: 100,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isSelected ? Colors.white.withOpacity(.7) : null,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(.2),
                      blurRadius: 80,
                      offset: const Offset(1, 10))
                ]),
            child: Icon(
              icon,
              color: isSelected ? Colors.black : Colors.white,
            ),
          ),
        ),
        BlurEffects(
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: isSelected
                        ? Colors.white
                        : Colors.white.withOpacity(.5))))
      ],
    );
  }
}
