import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final Widget label;
  final bool disabled;
  final bool rounded;
  final Function() onTap;

  const ButtonDefault({
    super.key,
    required this.label,
    required this.disabled,
    required this.rounded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onTap,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rounded ? 50.0 : 8.0)
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
         const EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ),
      child: label,
    );
  }
}
