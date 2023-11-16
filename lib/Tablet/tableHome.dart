import 'package:ecommerce/Mobile/columnFour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        endDrawer: const mobileDrawer(),

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
                            child: Text('Let\'s Make A Difference Today', style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold)),
                          ),
                          MyCards().tabletCards(),
                        ],
                      )
                  )
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: <Widget>[
                  Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MobileCol3().myColumn(),
                    ],
                  ),
                const SizedBox(height: 30),
                  Column(
                    children:[
                      MyColCards().myCards()
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Container(
                    height: 1000,
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                        image: DecorationImage( fit: BoxFit.cover, opacity: 0.5,
                            image: AssetImage('assets/33-1.jpg')
                        )
                    ),
                    child:  Column(
                      children: <Widget>[
                        MobileCol4().mobileContactForm(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
