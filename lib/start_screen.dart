import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/tengkorak-logo.png",
            width: 300,
            height: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Belajar Flutter menyenangkan!',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start',
            ),
          )
        ],
      ),
    );
  }
}
