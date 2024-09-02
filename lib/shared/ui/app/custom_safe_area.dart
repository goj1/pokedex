import 'package:flutter/material.dart';

class CustomSafeArea extends StatelessWidget {
  final Widget child;
  final bool? hasPadding;
  final double? paddingValue;
  final String? backgroundImage;

  const CustomSafeArea({
    super.key,
    required this.child,
    this.hasPadding,
    this.paddingValue,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: BoxDecoration(
            image: backgroundImage != null && backgroundImage!.isNotEmpty
                ? DecorationImage(
                    image: AssetImage(
                      backgroundImage!,
                    ),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          padding: EdgeInsets.only(
            left: hasPadding == true ? paddingValue! : 0.0,
            right: hasPadding == true ? paddingValue! : 0.0,
          ),
          child: child,
        ),
      ),
    );
  }
}
