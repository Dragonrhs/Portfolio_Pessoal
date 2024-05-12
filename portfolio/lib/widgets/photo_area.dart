import 'package:flutter/material.dart';

class PhotoArea extends StatelessWidget {
  const PhotoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
      
       child: Image.network('https://media.licdn.com/dms/image/D4D35AQGgWuJRYbN_tw/profile-framedphoto-shrink_400_400/0/1710511194712?e=1716091200&v=beta&t=sd5ZPD8KGrkZamo0_1nBGTYL2OmN62mvK2PK62v9NMQ', fit: BoxFit.cover,)
       ,
    );
  }
}