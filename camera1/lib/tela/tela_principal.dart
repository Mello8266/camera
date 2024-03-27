import 'dart:io';
import 'package:camera1/componetes/estilo.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final imagePicker = ImagePicker();
  File? imagem;

  julia(ImageSource source)  async{
    final pickedFile = await imagePicker.pickImage(source: source);

    if(pickedFile != null){
      setState(() {
        imagem = File(pickedFile.path);
      });
      GallerySaver.saveImage(imagem!.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: barraSuper,
            body: Center(
              child: Container(
                width: 200,
                height: 100,
                decoration: containerStyle,
                child: TextButton(
                  onPressed: (){
                    julia(ImageSource.camera);
                  },
                  child: Center(
                    child: containerText,
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}