import 'package:flutter/material.dart';

class PhotoArea extends StatelessWidget {
  const PhotoArea({Key? key}) : super(key: key);

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