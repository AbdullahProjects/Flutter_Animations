import 'package:flutter/material.dart';

class AnimatedShoppingCartButton extends StatefulWidget {
  const AnimatedShoppingCartButton({super.key});

  @override
  State<AnimatedShoppingCartButton> createState() =>
      _AnimatedShoppingCartButtonState();
}

class _AnimatedShoppingCartButtonState
    extends State<AnimatedShoppingCartButton> {
  bool isShoppingCartOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Shopping Cart Button"),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isShoppingCartOpen = !isShoppingCartOpen;
          });
        },
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: isShoppingCartOpen ? 200 : 90,
                height: 60,
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: isShoppingCartOpen ? Colors.green : Colors.blue,
                  borderRadius:
                      BorderRadius.circular(isShoppingCartOpen ? 30 : 8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        isShoppingCartOpen ? Icons.check : Icons.shopping_cart),
                    if (isShoppingCartOpen) Text("Item Added"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
