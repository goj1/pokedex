import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Widget label;
  final bool disabled;
  final Color color;
  final double size;
  final Function() onTap;

  const CircleButton({
    super.key,
    required this.label,
    required this.disabled,
    required this.color,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: onTap,
          child: SizedBox(
            height: size,
            width: size,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: label,
              ),
            ),
          ),
        ),
      ),
    );
  }
}