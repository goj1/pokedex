import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

class DialogMessage extends StatelessWidget {
  final String? image;
  final String title;
  final String message;

  const DialogMessage({
    super.key,
    required this.title,
    required this.message,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(title),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            message,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: DSFontSize.body,
            ),
          ),
        ),
        image != null
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    image ?? '',
                  ),
                ),
              )
            : const Text(''),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // Navigator.goBack(context);
                },
                child: const Text('Fechar'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
