import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  final String assetPath;

  const MovieWidget(this.assetPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(assetPath),
    );
  }
}
