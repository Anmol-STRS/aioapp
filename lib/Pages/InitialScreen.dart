import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class ColorPalette {
  static const Color primaryColor = Color(0xFF232931); // Dark blue
  static const Color secondaryColor = Color(0xFF393E46); // Dark grey
  static const Color accentColor = Color(0xFF4ECCA3); // Light green
  static const Color backgroundColor = Color(0xFFEEEEEE); // Light grey
}

List bgcolors = const [Color(0xFF232931), Color(0xFF393E46), Color(0xFF4ECCA3), Color(0xFFEEEEEE)];

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Screen'),
        centerTitle: true,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF232931),
        elevation: 10,
        shadowColor: const Color(0xFF393E46),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(child: Text('Main App', style: TextStyle(fontSize: 30))),
              SizedBox(
                height: 60,
              ),
              Text('[LOGO]', style: TextStyle(fontSize: 40)),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    content: Text('Your content goes here'),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4ECCA3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text('Login'),
          ),
          Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF232931),
              Color(0xFF393E46),
              Color(0xFF4ECCA3),
              Color(0xFFEEEEEE),
            ],
          ),
        ),
          )
        ],
      ),
    );
  }
}
