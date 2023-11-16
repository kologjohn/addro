import 'package:ecommerce/Desktop/Blogs.dart';
import 'package:ecommerce/Desktop/Column-three.dart';
import 'package:ecommerce/Desktop/Containers.dart';
import 'package:ecommerce/Desktop/Events.dart';
import 'package:ecommerce/Desktop/Footer.dart';
import 'package:ecommerce/Desktop/Header.dart';
import 'package:ecommerce/Desktop/Sliders.dart';
import 'package:ecommerce/Desktop/columnFour.dart';
import 'package:ecommerce/Gallery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DeskTop());
}

class DeskTop extends StatelessWidget {
  const DeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: CupertinoColors.white,
          title: const Header(),),
        //appBar: AppBar(title: const Text('Ecommerce')),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    decoration:  const BoxDecoration(
                      color: CupertinoColors.black,
                      image: DecorationImage(
                        filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          opacity: 0.5,
                          image: AssetImage('assets/33-1.jpg')
                      ),
                    ),
                    child: const Slides(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Text('RECENT PROJECTS', style: GoogleFonts.roboto(color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Let\'s Make A Difference Today', style: GoogleFonts.playfairDisplay(fontSize: 40, fontWeight: FontWeight.bold)),
                          ),
                          const RecentProjects(),
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: <Widget>[
                  Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Col3().myColumn(),
                    ],
                  ),
                const SizedBox(height: 100),
                  Column(
                    children:[
                     Col3Cards().myCards()
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 50),
              // Column(
              //   children: [
              //     Container(
              //       height: 600,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //           image: DecorationImage(
              //             filterQuality: FilterQuality.high,
              //               fit: BoxFit.cover,
              //               opacity: 0.5,
              //               image: AssetImage('assets/33-1.jpg')
              //           )
              //       ),
              //       child:  Column(
              //         children: <Widget>[
              //           Col4().contactForm(),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
               Container(
                 color: Colors.black12,
                 child: const Column(
                  children: [
                    DesktopEvents(),
                  ],
                ),
               ),

              const Column(
                children: [
                  SizedBox( height: 100),
                  Blog(),
                  SizedBox(height: 150),
                  GetInvolve()
                ],
              ),
              Column(
                children: <Widget>[
                  Gallery()
                ],
              ),
              const SizedBox(height: 100),
              const Column(
                children: [
                  Footer()
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
