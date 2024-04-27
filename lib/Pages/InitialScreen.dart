import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Screen'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.amberAccent.shade400,
        elevation: 10,
        shadowColor: Colors.black,
      ),
    );
  }
}