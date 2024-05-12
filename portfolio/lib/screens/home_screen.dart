import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar.dart';
import 'package:portfolio/widgets/photo_area.dart';
import 'package:portfolio/widgets/section_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: PortfolioAppBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              SizedBox(height: 50),
              PhotoArea(),
              SizedBox(height: 30),
              Text(
                'Ryuske Hideaki Sato',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              SectionCard(title: 'Competências'),
              SectionCard(title: 'Formação'),
              SectionCard(title: 'Links'),
            ],
          ),
        ),
      ),
    );
  }
}