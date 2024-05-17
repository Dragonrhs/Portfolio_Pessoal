import 'package:flutter/material.dart';

class PortfolioAppBar extends StatelessWidget {
  final Function(String) onSectionPressed;

  const PortfolioAppBar({Key? key, required this.onSectionPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
          ElevatedButton(
            onPressed: () => onSectionPressed('Competências'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Competências'),
          ),
          ElevatedButton(
            onPressed: () => onSectionPressed('Formação'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Formação'),
          ),
          ElevatedButton(
            onPressed: () => onSectionPressed('Links'),
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