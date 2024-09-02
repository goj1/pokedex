import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget widget;
  final bool hasData;
  final String message;

  const BaseContainer({
    required this.widget,
    required this.hasData,
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      child: hasData
          ? widget
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
    );
  }
}
