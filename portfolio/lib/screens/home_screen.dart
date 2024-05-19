import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Web.dart';
import 'package:portfolio/widgets/photo_area/photo_area_Mobile.dart';
import 'package:portfolio/widgets/section_card/section_card.dart';
import 'package:portfolio/breakpoints.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '- Pacote Office avançado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Windows avançado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Análise de investimentos intermediário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Java intermediário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Python intermediário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- C básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- C# básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Js básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- HTML5 básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- CSS básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Flutter básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- Linux básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '- AWS básico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              
               SectionCard(key: formacaoKey,title: 'Formação'),

              const SizedBox(height: 30),
             
                     Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     mainAxisSize: MainAxisSize.min,
                      children: [
                  Image.network(
                    'https://media.licdn.com/dms/image/C4D0BAQFgIiUzENGjlw/company-logo_100_100/0/1630492490554/instituto_maua_de_tecnologia_logo?e=1724284800&v=beta&t=0F_r9IpQ62UminajRN6Yp9FWmBi-sqjWsnCFBpbSGd8', // URL da imagem
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Instituto Mauá de Tecnologia',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Graduação, Engenharia de Computação',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '2021 - 2025',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

               SectionCard(key: linksKey,title: 'Links'),
               
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () async {
                      const url = 'https://www.linkedin.com/in/ryuske-hideaki-sato/';
                      if(await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    onPressed: () async {
                      const url = 'https://github.com/Dragonrhs';
                      if(await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),             
            ],
          ),
        ],
        ),
      ),
    ),
    );
  });
  }
  }