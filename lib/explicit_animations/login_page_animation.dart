import 'package:flutter/material.dart';

class LoginPageAnimations extends StatefulWidget {
  const LoginPageAnimations({super.key});

  @override
  State<LoginPageAnimations> createState() => _LoginPageAnimationsState();
}

class _LoginPageAnimationsState extends State<LoginPageAnimations>
    with SingleTickerProviderStateMixin {
  late Animation<double> logoFadeAnimation;
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationTextField1;
  late Animation<Offset> slidingAnimationTextField2;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    logoFadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    slidingAnimationTextField1 =
        Tween(begin: Offset(-1, -1), end: Offset.zero).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));
    slidingAnimationTextField2 = Tween(begin: Offset(1, -1), end: Offset.zero)
        .animate(animationController);
    scaleAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page Animation"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: logoFadeAnimation,
              child: Image.asset(
                "assets/linkedin.png",
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            SlideTransition(
              position: slidingAnimationTextField1,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SlideTransition(
              position: slidingAnimationTextField2,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
