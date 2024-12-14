import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  const IconBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bcgd.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
