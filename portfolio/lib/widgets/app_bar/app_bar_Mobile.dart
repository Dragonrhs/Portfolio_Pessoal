import 'package:flutter/material.dart';

class App_Bar_Mobile extends StatelessWidget{
  

  const App_Bar_Mobile({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Competências'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Formação'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:  Colors.white
            ),
            child: const Text('Links'),
          ),
        ],
      ),
    );
  }
}