import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  // double size = 200;
  //
  // animateContainer() {
  //   Future.delayed(const Duration(seconds: 2), () {
  //     setState(() {
  //       size = 100;
  //     });
  //   });
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   animateContainer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation Builder"),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Center(
          // using tween builder -----------------------------------------------
          // (This approach is best for animation which values are not changing on click and which executed only once)
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0.0, end: 200),
            curve: Curves.easeInOut,
            builder: (context, size, child) {
              print("Builder Build: $size");
              return Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withValues(alpha: 0.2),
                      blurRadius: size / 2,
                      spreadRadius: size / 2,
                    ),
                  ],
                ),
                child: child,
              );
            },
            child: Center(child: Text("Avoid Rebuild...")),
          ),
          // same using animated container -------------------------------------
          // (This approach not considered well for such type of animation where values are not changing on click)
          // child: AnimatedContainer(
          //   duration: const Duration(seconds: 1),
          //   width: size,
          //   height: size,
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     shape: BoxShape.circle,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.red.withValues(alpha: 0.2),
          //         blurRadius: size / 2,
          //         spreadRadius: size / 2,
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
