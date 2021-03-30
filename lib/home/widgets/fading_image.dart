import 'package:flutter/foundation.dart';
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
    // Aparentemente a ShaderMask ainda não está sendo suportada na web.
    // Para evitar a exceção UnimplementedError, estou substituindo a
    // ShaderMask por um Container. No entanto, na versão web não terá
    // o degradê sobre o banner.
    return kIsWeb
        ? Container(
            child: Image.asset(
              imageName,
              fit: BoxFit.fitWidth,
            ),
          )
        : ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(Rect.fromLTRB(
                  0,
                  rect.height * factionallyStartFading,
                  rect.width,
                  rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              imageName,
              fit: BoxFit.fitWidth,
            ),
          );
  }
}
