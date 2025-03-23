import 'dart:math';

import 'package:flutter/material.dart';

class ImplicitAnimationsAll extends StatefulWidget {
  const ImplicitAnimationsAll({super.key});

  @override
  State<ImplicitAnimationsAll> createState() => _ImplicitAnimationsAllState();
}

class _ImplicitAnimationsAllState extends State<ImplicitAnimationsAll> {
  Alignment selectedAlignment = Alignment.center;
  Color selectedColor = Colors.red;
  List<Alignment> allAlignments = [
    Alignment.topRight,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.centerRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.bottomRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
  ];

  void changeAnimatedAlignProperty() {
    final random = Random();
    setState(() {
      selectedAlignment =
          allAlignments[random.nextInt(allAlignments.length - 1)];
      selectedColor = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit Animations"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                lightNodes(),
                Container(
                  width: size.width,
                  height: 350,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: AnimatedContainer(
                    alignment: selectedAlignment,
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: selectedColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: changeAnimatedAlignProperty,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  "Align Randomly",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget lightNodes() {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonNode(),
              commonNode(),
              commonNode(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonNode(),
              commonNode(),
              commonNode(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              commonNode(),
              commonNode(),
              commonNode(),
            ],
          ),
        ],
      ),
    );
  }

  Widget commonNode() {
    return SizedBox(
      width: 40,
      height: 40,
      child: Center(
        child: Container(
          alignment: Alignment.topLeft,
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
