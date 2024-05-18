import 'package:flutter/material.dart';

class PhotoArea_Web extends StatelessWidget {
  const PhotoArea_Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/Ryuske.jpg'),
        ),
      ),

    );
  }
}