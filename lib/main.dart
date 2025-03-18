import 'package:animations_rivan_sir/implicit_animations/animated_shopping_cart_button.dart';
import 'package:animations_rivan_sir/implicit_animations/tween_animation_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: AnimatedColorPalatte(),
      // home: AnimatedShoppingCartButton(),
      home: TweenAnimationBuilderWidget(),
    );
  }
}
