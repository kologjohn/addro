import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        Text(
            'Projects',
            style: GoogleFonts.playfairDisplay(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ))),
        const SizedBox(width: 250, child: Dividers(newColor: Colors.black,)),
        const SizedBox(height: 50,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            blog(
                'Thematic Programmes',
                'We believe that God’s love, and peace can only be found in a community based upon right relations.',
                'assets/services-img1.jpg',
                    () { }
            ),
            blog(
                'Integrated Community-Based Health Program',
                'ADDRO’s health program was focused mainly on carrying out '
                    'malaria intervention activities in communities.',
                'assets/services-img2.jpg',
                    () { }
            ),
            blog(
                'Community Development Projects',
                'We professionally resource start-ups and boost trending business to '
                    'continue to meet their market demand.',
                'assets/services-img3.jpg',
                    () { }
            ),
            blog(
                'Collaborative Projects',
                'We perform monitoring and business to keep them alive and in track.',
                'assets/joining2.jpg',
                    () { }
            ),
          ],
        )
      ],
    );
  }
  blog( String name, String description, String img,  void Function()? onPressed ){
    return Column(
      children: [
        SizedBox(
          width: 300,
          child:  Card(
            child: Column(
              children:[
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: onPressed,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              image: AssetImage(img)
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name, style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description, style: GoogleFonts.raleway(fontSize: 14,)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
