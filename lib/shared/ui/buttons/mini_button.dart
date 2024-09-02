import 'package:flutter/material.dart';

class MiniButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const MiniButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(3.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(3.0),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            label,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ),
        ),
      ),
    );
  }
}
