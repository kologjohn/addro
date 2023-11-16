import 'package:ecommerce/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileCards {
  String? img;
  String? boldtxt;
  String? normaltxt;

  MobileCards(this.img, this.boldtxt, this.normaltxt);
  Widget myMobileCards(){
    return  SizedBox(
     // width: 250, height: 500,
      child: Card(
        color: Colors.white,
        //elevation: 5,
        shape: const RoundedRectangleBorder(
          side: BorderSide( color: Colors.amber)
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('$img', height: 40, width: 40, color: Colors.yellow[800],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      '$boldtxt',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 30)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$normaltxt',textAlign: TextAlign.center, style: GoogleFonts.raleway(fontSize: 20),),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Buttons('Read more').elvatedBtn()
          ],
        ),
      ),
    );
  }
}


class MyCards{

  Widget mobileCards(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 550, width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MobileCards(
                      'assets/health2.svg',
                      'Thematic Programmes',
                      'We believe that God’s love, and peace can only be found in a '
                          'community based upon right relations.').myMobileCards(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 550, width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MobileCards(
                      'assets/community.svg',
                      'Integrated Community-Based Health Program',
                      'ADDRO’s health program was focused mainly on carrying out '
                          'malaria intervention activities in communities.').myMobileCards(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 550, width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MobileCards(
                      'assets/arrow.svg',
                      'Community Development Projects',
                      'We professionally resource start-ups and boost trending business to '
                          'continue to meet their market demand.').myMobileCards(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 550, width: 400,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MobileCards(
                      'assets/handshake.svg',
                      'Collaborative Projects',
                      'We perform monitoring and business to keep them alive and in track.').myMobileCards(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


