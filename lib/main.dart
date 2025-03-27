import 'package:animations_rivan_sir/explicit_animations/list_animation.dart';
import 'package:animations_rivan_sir/explicit_animations/loading_animation.dart';
import 'package:animations_rivan_sir/explicit_animations/login_page_animation.dart';
import 'package:animations_rivan_sir/implicit_animations/animated_color_palatte.dart';
import 'package:animations_rivan_sir/implicit_animations/animated_shopping_cart_button.dart';
import 'package:animations_rivan_sir/implicit_animations/implicit_animations_all.dart';
import 'package:animations_rivan_sir/implicit_animations/tween_animation_builder.dart';
import 'package:animations_rivan_sir/page_route_builder_animation/splash_animation.dart';
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
      // implicit animations ---------------------------------------------------
      // home: AnimatedColorPalatte(),
      // home: AnimatedShoppingCartButton(),
      // home: TweenAnimationBuilderWidget(),
      // home: ImplicitAnimationsAll(),
      // explicit animations ---------------------------------------------------
      // home: LoginPageAnimations(),
      // home: ListAnimation(),
      // home: LoadingAnimation(
      //   color: Colors.blue,
      //   progress: 0.65,
      // ),
      home: SplashAnimation(),
    );
  }
}
