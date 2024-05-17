import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Web.dart';
import 'package:portfolio/widgets/section_card/section_card.dart';
import 'package:portfolio/breakpoints.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

@override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
    return  Scaffold(
      appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: App_Bar_Web(onSectionPressed: _scrollToSection),
              )
            : const PreferredSize(
                preferredSize:  Size.fromHeight(56),
                child: App_Bar_Mobile(onSectionPressed: _scrollToSection),
              ),
      

      
      // PreferredSize(
      //   preferredSize: const Size.fromHeight(80),
      //   child: PortfolioAppBar(onSectionPressed: _scrollToSection),
      // ),
      
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
              const Text("teste", style: TextStyle(fontSize: 16) ),
              const SizedBox(height: 500),
              SectionCard(title: 'Formação', key: GlobalKey(debugLabel: 'Formação')),
              SectionCard(title: 'Links', key: GlobalKey(debugLabel: 'Links')),
            ],
          ),
        ),
      ),
    );
  });
  }
}