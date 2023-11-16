import 'package:ecommerce/Desktop/Containers.dart';
import 'package:ecommerce/Desktop/Footer.dart';
import 'package:ecommerce/Gallery.dart';
import 'package:ecommerce/Mobile/Blogs.dart';
import 'package:ecommerce/Mobile/Events.dart';
import 'package:ecommerce/Mobile/Footer.dart';
import 'package:ecommerce/Mobile/columnFour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Desktop/Column-three.dart';
import '../Drawer.dart';
import 'Column-three.dart';
import 'Containers.dart';
import 'Sliders.dart';

void main() {
  runApp(const Mobile());
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:  TextButton(
            onPressed: (){},
            child: const Text('ADDRO', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 30))
          ),
          toolbarHeight: 70,
          backgroundColor: Colors.blueGrey,
        ),
        endDrawer: const MobileDrawer(),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    decoration:  const BoxDecoration(
                      color: Colors.black87,
                      image: DecorationImage(fit: BoxFit.cover, opacity: 0.3, image: AssetImage('assets/33-1.jpg')),
                    ),
                    child: const MobileSlides(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 1500,
                    color: Colors.black12,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Text('RECENT PROJECTS', style: GoogleFonts.roboto(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Let\'s Make A Difference Today',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold)
                            ),
                          ),
                          const RecentProjects(),
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 50),
              const Column(
                children: <Widget>[
                  WorkOrganization()
                //   Column(
                //    // mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       MobileCol3().myColumn(),
                //     ],
                //   ),
                // const SizedBox(height: 30),
                //   Column(
                //     children:[
                //       MyColCards().myCards()
                //     ],
                //   ),

                ],
              ),
              const SizedBox(height: 10),
              // Column(
              //   children: [
              //     Container(
              //       height: 800,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //           image: DecorationImage(
              //               fit: BoxFit.cover, opacity: 0.5,
              //               image: AssetImage('assets/33-1.jpg')
              //           )
              //       ),
              //       child:  Column(
              //         children: <Widget>[
              //           MobileCol4().mobileContactForm(),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black12,
                    child: const Column(
                      children: [
                        MobileEvents()
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black12,
                    child:  Column(
                      children: [
                        Column(
                          children: <Widget>[
                            const SizedBox(height: 50),
                            Column(
                              children: <Widget>[
                                Text('MEET OUR TEAM',style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20)),
                                Text('Our Optimistic Volunteer',textAlign: TextAlign.center, style: GoogleFonts.playfairDisplay( fontSize: 8, fontWeight: FontWeight.bold)),

                              ],
                            ),
                          ],
                        ),
                        const Team()
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                color: Colors.black12,
                child: const Column(
                  children: [
                    MobileBlog()
                  ],
                ),
              ),
              const Column(
                children: [
                  GetInvolve()
                ],
              ),
              const Column(
                children: [
                  Gallery()
                ],
              ),
              const Column(
                children: [
                  MobileFooter()
                ],
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
