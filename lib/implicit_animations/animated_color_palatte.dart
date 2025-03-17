import 'package:flutter/material.dart';

class AnimatedColorPalatte extends StatefulWidget {
  const AnimatedColorPalatte({super.key});

  @override
  State<AnimatedColorPalatte> createState() => _AnimatedColorPalatteState();
}

class _AnimatedColorPalatteState extends State<AnimatedColorPalatte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Color Palatte"),
      ),
    );
  }
}
