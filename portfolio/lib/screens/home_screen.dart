import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar.dart';
import 'package:portfolio/widgets/photo_area.dart';
import 'package:portfolio/widgets/section_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

@override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(String sectionName) {
   
    final RenderBox renderBox = _scrollController.position.context.storageContext.findRenderObject() as RenderBox;
    final sectionKey = GlobalKey(debugLabel: sectionName);
    final sectionOffset = renderBox.localToGlobal(Offset.zero, ancestor: sectionKey.currentContext!.findRenderObject()).dy;

    _scrollController.animateTo(
      sectionOffset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }



  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: PortfolioAppBar(onSectionPressed: _scrollToSection),
      ),
      
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 50),
              const PhotoArea(),
              const SizedBox(height: 30),
              const Text(
                'Ryuske Hideaki Sato',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              SectionCard(title: 'Competências', key: GlobalKey(debugLabel: 'Competências')),
              const Text("data", style: TextStyle(fontSize: 16) ),
              const SizedBox(height: 500),
              SectionCard(title: 'Formação', key: GlobalKey(debugLabel: 'Formação')),
              SectionCard(title: 'Links', key: GlobalKey(debugLabel: 'Links')),
            ],
          ),
        ),
      ),
    );
  }
}