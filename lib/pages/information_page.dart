import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  final titleStyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30);

  final textStyle = const TextStyle(color: Colors.black, fontSize: 15);
  final remarquedText = const TextStyle(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                "Información de la aplicacion",
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  text: 'Programa hecho por: ',
                  style: textStyle,
                  children: [
                    TextSpan(
                        text: 'Hector David Solis May', style: remarquedText),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: '5° Grupo ',
                  style: textStyle,
                  children: [
                    TextSpan(text: 'A', style: remarquedText),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Tiempo tardado en realizar la practica: ',
                  style: textStyle,
                  children: [
                    TextSpan(text: '2 horas', style: remarquedText),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
