import 'package:camera1/componetes/estilo.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
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