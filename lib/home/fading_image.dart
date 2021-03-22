import 'package:flutter/material.dart';

/// Implementação do componente de imagem do banner principal
/// da aplicação que "desvanece" à medida que chega na parte
/// de baixo da imagem.
class FadingImage extends StatelessWidget {
  final String imageName;

  // Atributo que define a partir de quantos porcento da imagem
  // o "fading" deve começar
  final double factionallyStartFading;

  const FadingImage(
    this.imageName, {
    this.factionallyStartFading = 0.55,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.transparent],
        ).createShader(Rect.fromLTRB(
            0, rect.height * factionallyStartFading, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: Image.asset(
        imageName,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
