import 'package:auto_route/auto_route.dart';
import '../router/router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'image_manger.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30, right: 25),
      child: Row(
        children: [
          Image.asset(
            ImageManger.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                context.router.push(const SearchRoute());
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
