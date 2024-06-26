import 'package:flutter/material.dart';
 class App_Bar_Web extends StatelessWidget {
  final VoidCallback scrollToLinks;
  final VoidCallback scrollToFormacao;
  final VoidCallback scrollToCompetencias;

   App_Bar_Web({required this.scrollToLinks, required this.scrollToCompetencias, required this.scrollToFormacao}): super() ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {scrollToCompetencias();},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Competências', style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {scrollToFormacao();},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Formação', style: TextStyle(color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {scrollToLinks();},
            style: ElevatedButton.styleFrom(
              backgroundColor:  Colors.white
            ),
            child: const Text('Links', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}