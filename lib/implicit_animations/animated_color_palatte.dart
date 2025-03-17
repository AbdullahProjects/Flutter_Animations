import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedColorPalatte extends StatefulWidget {
  const AnimatedColorPalatte({super.key});

  @override
  State<AnimatedColorPalatte> createState() => _AnimatedColorPalatteState();
}

class _AnimatedColorPalatteState extends State<AnimatedColorPalatte> {
  Color color = assignColor();

  static Color assignColor() {
    final random = Random();
    return Color.fromRGBO(
        random.nextInt(255), random.nextInt((255)), random.nextInt(255), 1);
  }

  revertColor() {
    setState(() {
      color = assignColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Color Shifting"),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: revertColor,
        backgroundColor: Colors.grey,
        child: Icon(Icons.play_arrow),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: 300,
                height: 300,
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
