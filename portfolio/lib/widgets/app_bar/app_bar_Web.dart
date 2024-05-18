import 'package:flutter/material.dart';
import '/screens/home_screen.dart';

class App_Bar_Web extends StatelessWidget {
  

  const App_Bar_Web({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
          ElevatedButton(
            onPressed: () {/*scrollToCompetencias();*/},
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
            onPressed: () {homeScreenStateKey.currentState?.scrollToLinks();},
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