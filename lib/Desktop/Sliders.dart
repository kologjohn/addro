
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slides extends StatelessWidget {
  const Slides({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items:  [
          SliderItems(
              'LETS BUILD THE BETTER \nWORLD TOGETHER',
              'THE ANGLICAN CHURCH OF NORTHERN GHANA',
            'The Anglican Church of Northern Ghana Started its first development \nproject in 1971, '
                'Undertaking irrigation Farming projects. \nIn 1978 the church launched Anglican '
                'church agricultural project \nwith the aim of meeting the needs of the poor'

          ).items(),

        ],
        options: CarouselOptions(
          height: 700,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 8),
            enlargeCenterPage: true,
            viewportFraction: 1.0
        )
    );
  }
}

class SliderItems {
  //String? img;
  String? txt;
  String? txt2;
  String? boldtxt;

  SliderItems( this.boldtxt, this.txt, this.txt2);
  Widget items (){
    return Column(
      children: [
        const SizedBox(height: 200,),
        Column(
          children: <Widget>[

            Row(
              children: [
                const SizedBox(width: 20,height: 10,),
                Text(
                    '$txt',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, color: Colors.white,
                      letterSpacing: 3
                    )),
              ],
            ),
            const SizedBox(height: 20,),

            Row(
              children: [
                const SizedBox(width: 20, height: 10,),
                Text(
                    '$boldtxt',
                    style: GoogleFonts.ptSerif(
                        color: Colors.white,
                        fontSize: 40, fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Text('$txt2', style:GoogleFonts.b612Mono(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30, left: 50),
          child: Row(
            children: <Widget>[
              DonateBtn('Donate funds').elvatedBtn(),
              const SizedBox(width: 20,),
              Button2('Read more').elvatedBtn()
            ],
          ),
        ),

      ],
    );
  }
}