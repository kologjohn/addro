import 'package:ecommerce/Desktop/Column-three.dart';
import 'package:ecommerce/Desktop/Containers.dart';
import 'package:ecommerce/Desktop/Header.dart';
import 'package:ecommerce/Desktop/Sliders.dart';
import 'package:ecommerce/Desktop/columnFour.dart';
import 'package:flutter/material.dart';
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
          backgroundColor: Colors.white,
          title: const Header(),),
        //appBar: AppBar(title: const Text('Ecommerce')),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    decoration:  const BoxDecoration(
                      color: Colors.black87,
                      image: DecorationImage(fit: BoxFit.cover, opacity: 0.6, image: AssetImage('assets/33-1.jpg')),
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
                          FinalCards().fCards(),
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
              Column(
                children: [
                  Container(
                    height: 600,
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                        image: DecorationImage( fit: BoxFit.cover, opacity: 0.5,
                            image: AssetImage('assets/33-1.jpg')
                        )
                    ),
                    child:  Column(
                      children: <Widget>[
                        Col4().contactForm(),
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
