import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../sections/AboutUs.dart';
import '../../sections/section.dart';
import '../../sections/Drawer.dart';
import '../../sections/Footer.dart';
import '../../sections/Projects.dart';
import '../../sections/header_sliders.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADDRO', style: GoogleFonts.roboto(fontSize: 30, color: Colors.white, letterSpacing: 1),),
          backgroundColor: Colors.pink,
        ),
        endDrawer:  const MobileDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                  items: const [
                    Sliders(
                      img: 'assets/ECD promoters.jpg',
                      text: 'LETS BUILD THE BETTER WORLD TOGETHER',
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Sliders(
                      img: 'assets/harvest.jpg',
                      text: 'THE ANGLICAN CHURCH OF NORTHERN GHANA',
                      crossAxisAlignment: CrossAxisAlignment.start,

                    ),
                    Sliders(
                      img: 'assets/SwE meet.jpg',
                      text: 'The Anglican Church of Northern Ghana Started its first development project in 1971, '
                          'Undertaking irrigation Farming projects. In 1978 the church launched Anglican '
                          'church agricultural project with the aim of meeting the needs of the poor',
                      crossAxisAlignment: CrossAxisAlignment.end,

                    ),
                  ],
                  options: CarouselOptions(
                      height: 500,
                      aspectRatio: 18/9,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 8),
                      enlargeCenterPage: true,
                      viewportFraction: 1.0
                  )
              ),
              const Projects(),
              const SizedBox(height: 30),
              Container(
                  color: Colors.black26.withOpacity(0.05),
                  child: const WhoWeAre()
              ),
              const Partners(),
              const Services(),
              const SizedBox(height: 30),
              const SupportUs(),
              const JoinUs(),
              const SizedBox(height: 30),
              Container(
                  color: Colors.pink[900],
                  child: const Footer()
              )
            ],
          ),
        ),
      ),
    );
  }
}
