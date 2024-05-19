import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Mobile.dart';
import 'package:portfolio/widgets/section_card/section_card.dart';
import 'package:portfolio/breakpoints.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

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
      final context = formacaoKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
    }

    void scrollToLinks() async {
      final context = linksKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(milliseconds: 1500));
    }
  
    @override
    Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
    return  Scaffold(
      appBar: constraints.maxWidth > breakpointMobile
            ?  PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: App_Bar_Web(scrollToLinks: scrollToLinks, scrollToFormacao: scrollToFormacao, scrollToCompetencias: scrollToCompetencias),
              )
            : const PreferredSize(
                preferredSize:  Size.fromHeight(56),
                child: App_Bar_Mobile(),
              ),
      body:  SingleChildScrollView(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
             [ constraints.maxWidth > breakpointMobile
                ? const PhotoArea_Web()
                : const PhotoArea_Mobile(),
              const SizedBox(height: 30),
              
              const Text(
                'Ryuske Hideaki Sato',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              SectionCard(key: competenciasKey, title: 'Competências'),

              const SizedBox(height: 30),
              const Text("- Pacote Office avançado", style: TextStyle(fontSize: 16) ),
              const Text("- Windows avançado", style: TextStyle(fontSize: 16) ),
              const Text("- Análise de investimentos intermediário", style: TextStyle(fontSize: 16) ),
              const Text("- Java intermediário", style: TextStyle(fontSize: 16) ),
              const Text("- Python intermediário", style: TextStyle(fontSize: 16) ),
              const Text("- C básico", style: TextStyle(fontSize: 16) ),
              const Text("- C# básico", style: TextStyle(fontSize: 16) ),
              const Text("- Js básico", style: TextStyle(fontSize: 16) ),
              const Text("- HTML5 básico", style: TextStyle(fontSize: 16) ),
              const Text("- CSS básico", style: TextStyle(fontSize: 16) ),
              const Text("- Flutter básico", style: TextStyle(fontSize: 16) ),
              const Text("- Linux básico", style: TextStyle(fontSize: 16) ),
              const Text("- AWS básico", style: TextStyle(fontSize: 16) ),
              const SizedBox(height: 30),
              
               SectionCard(key: formacaoKey,title: 'Formação'),
               SectionCard(key: linksKey,title: 'Links'),
            ],
          ),
        ),
      ),
    );
  });
  }
  }