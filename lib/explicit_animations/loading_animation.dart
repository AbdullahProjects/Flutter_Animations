import 'package:flutter/material.dart';

class LoadingAnimation extends StatefulWidget {
  final double progress;
  final Color color;
  const LoadingAnimation(
      {super.key, required this.progress, required this.color});

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: widget.progress).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Loading Animation"),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: Icon(Icons.play_arrow),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: CircularProgressIndicator(
                        value: animation.value,
                        strokeWidth: 15,
                        color: widget.color,
                      ),
                    ),
                    Text(
                      "${(animation.value * 100).toInt()}%",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
