import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBarWidget extends StatelessWidget {
  const CustomBookDetailsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: const Icon(Icons.close),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
