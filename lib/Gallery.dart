import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('GALLERY', style: GoogleFonts.playfairDisplay(textStyle:TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Images().images('assets/ECD committee.jpg', 'ECD Committee Meeting at Daborinsa'),
                Images().images('assets/harvest.jpg', 'A project officer with caregivers during the harvest of their vegetables at Zaring community'),
                Images().images('assets/meeting ECD promoter.jpg', 'Monthly reflection meeting with ECD promoters'),
                Images().images('assets/fund dist.jpg', 'SwE Funds distribution with the committee'),
                Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                Images().images('assets/learning group meeting.jpg', 'Caregivers monthly support and learning group meeting'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Images{
  images(String img, String txt){
    return Column(
      children: [
        Container(
          height: 250, width: 250,
          decoration:  BoxDecoration(
            color: Colors.black,
            image: DecorationImage( fit: BoxFit.cover, opacity: 0.5,
                image: AssetImage(img,)
            ),
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.brown[900],
                child: Text(txt, style: GoogleFonts.mPlus1(textStyle: const TextStyle(fontSize: 14, color: CupertinoColors.white)),),
              )
            ],
          ),
        ),
      ],
    );
  }
}
