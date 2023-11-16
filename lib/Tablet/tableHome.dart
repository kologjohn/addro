import 'package:ecommerce/Gallery.dart';
import 'package:ecommerce/Mobile/Column-three.dart';
import 'package:ecommerce/Mobile/Events.dart';
import 'package:ecommerce/Mobile/columnFour.dart';
import 'package:ecommerce/Tablet/Blogs.dart';
import 'package:ecommerce/Tablet/Events.dart';
import 'package:ecommerce/Tablet/Footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Desktop/Column-three.dart';
import '../Desktop/Containers.dart';
import '../Drawer.dart';
import 'Column-three.dart';
import 'Containers.dart';
import 'Sliders.dart';

void main() {
  runApp(const Tablet());
}

class Tablet extends StatelessWidget {
  const Tablet({super.key});

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
          backgroundColor: Colors.black54,
        ),
        endDrawer: const MobileDrawer(),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                            opacity: 0.5, image: AssetImage('assets/33-1.jpg')),
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
                              child: Text('Let\'s Make A Difference Today', style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold)),
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
                  ],
                ),

                const SizedBox(height: 50),

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
                                  Text('MEET OUR TEAM',style: GoogleFonts.roboto( color: Colors.amber[900], fontWeight: FontWeight.bold, fontSize: 30)),
                                  Text('Our Optimistic Volunteer',textAlign: TextAlign.center, style: GoogleFonts.playfairDisplay( fontSize: 20, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          const Team()
                        ],
                      ),
                    ),
                  ],
                ),

                const Column(
                  children: [
                    TabletBlog()
                  ],
                ),
                const Column(
                  children: [
                    Gallery()
                  ],
                ),
                const Column(
                  children: <Widget>[
                    TabletFooter()
                  ],
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
