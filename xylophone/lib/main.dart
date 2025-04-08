import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

void Playsound(String s) {
  final player = AudioPlayer();
  player.play(AssetSource('key0$s.mp3'));
}

Expanded BuildWidget(Color colorname, int audioNo){
  return Expanded(
    child: TextButton(

        style: TextButton.styleFrom(
          backgroundColor: colorname,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // No rounding

          ),
          enableFeedback: false,
        ),
        onPressed: () {
          Playsound(audioNo.toString());
        },
        child: const Text('')),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BuildWidget(Colors.purple, 1),
                  BuildWidget(Colors.indigo, 2),
                  BuildWidget(Colors.blue, 3),
                  BuildWidget(Colors.green, 4),
                  BuildWidget(Colors.yellow, 5),
                  BuildWidget(Colors.orange, 6),
                  BuildWidget(Colors.red, 7),

                ],
              ),
            )),
      ),
    );
  }
}
