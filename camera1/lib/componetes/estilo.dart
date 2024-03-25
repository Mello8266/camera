//! Tela principal
import 'package:flutter/material.dart';

const roxo =Color.fromRGBO(54, 0, 79, 100);
const cinza = Color.fromRGBO(127, 110, 135, 100);

var textoMultiCor = Row(
  children: [
    Text(
      'Receba',
      style: textStilizido(tamFonte: 30, cor: roxo)
    ),
    Text(
      'Lens',
      style: textStilizido(tamFonte: 30, cor: cinza),
    )
  ],
);

var barraSuper  = AppBar(
  leading: Image.asset("midia/icone_camera.png",),
  title: textoMultiCor
);

var containerStyle = BoxDecoration(
  color: const Color.fromRGBO(204, 130, 238, 100),
  borderRadius: BorderRadius.circular(15),
);

var containerText = Text(
  'Abrir câmera',
  style: textStilizido(tamFonte: 20, cor: roxo),
);

TextStyle textStilizido({required double tamFonte, required Color cor}){
  return TextStyle(
    fontFamily: 'NunitoSans',
    fontSize: tamFonte,
    color: cor
  );
}