import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Web.dart';
import 'package:portfolio/widgets/section_card/section_card.dart';
import 'package:portfolio/breakpoints.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

   class HomeScreenState extends State<HomeScreen> {
       
    final competenciasKey = GlobalKey();

    final formacaoKey = GlobalKey();

    final linksKey = GlobalKey();

    void scrollToCompetencias() async{
      final context = competenciasKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
    }

    void scrollToFormacao() async {
      final context = competenciasKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
    }

    void scrollToLinks() async {
      final context = competenciasKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
    }
  
    @override
    Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
    return  Scaffold(
      appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: App_Bar_Web(),
              )
            : const PreferredSize(
                preferredSize:  Size.fromHeight(56),
                child: App_Bar_Mobile(),
              ),
      body: const SingleChildScrollView(
        child:  Center(
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
              Text("teste", style: TextStyle(fontSize: 16) ),
              SizedBox(height: 500),
              SectionCard(title: 'Formação'),
              SectionCard(title: 'Links'),
            ],
          ),
        ),
      ),
    );
  });
  }
  }

  final homeScreenStateKey = GlobalKey<HomeScreenState>();
HomeScreen homeScreen = HomeScreen(key: homeScreenStateKey);