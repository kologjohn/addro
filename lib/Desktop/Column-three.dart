import 'package:ecommerce/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Col3{

  rw1 (String txt, String txt2){
    return Column(
      children: <Widget>[
        Text(txt, style: GoogleFonts.abrilFatface( color: Colors.white, fontSize: 30)),
        Text(txt2, style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),)

      ],
    );
  }
  dvd (){
    return const VerticalDivider(
      thickness: 5, indent: 20, color: Colors.white, width:20,

    );
  }

  Widget myColumn(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Column(
          children: [
            Container(
              height: 400, width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/gat.jpg')),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Col3().rw1('OK+', 'VOLUNTEER'),
                        Col3().dvd(),
                        Col3().rw1('O+', 'SPONSORS'),
                        Col3().dvd(),
                        Col3().rw1('O', 'BRANCHES'),
                        Col3().dvd(),
                        Col3().rw1('O+', 'AWARDS'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

         const SizedBox(width: 20),
         SizedBox(
           width: 500,
           child: Column(
             children: [
               Column(
                children: [
                  Col3().rw2(
                      'WHAT WE DO',
                      'Organisation And Work',
                      'The Anglican Church of Northern Ghana started its first development project in 1971, '
                          'undertaking irrigation farming projects. In 1978, the church launched the Anglican '
                          'Church Agricultural Project (ACAP) with the aim of meeting the needs of the poor...'
                  ),
                ],
              ),
               const SizedBox(height: 20),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizedBox(
                     width: 220, height: 130,
                     child: Column(
                      children: <Widget>[
                        TextBtn('').Textbtn(Icons.check, 'Mission Statement',),
                        TextBtn('').Textbtn(Icons.check, 'Vision Statement'),
                        TextBtn('').Textbtn(Icons.check, 'Core values')
                      ]
                    ),
                   ),

                   Column(
                    children: [Cont().smlCont('51', 'YEARS', 'OF EXPERIENCE')]
                  ),
                ],
               ),
               const SizedBox(height: 15),
               Row(
                 children: [
                   Buttons('Read more').elvatedBtn(),
                 ],
               )
             ],

         ),
       ),
      ],
    );
  }

  rw2(String txt, String txt2, String txt3){
   return Column(
      children: [
        Text(txt, style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 16),),
        const SizedBox(height: 10),
        Text(txt2, textAlign: TextAlign.center, style: GoogleFonts.playfairDisplay( fontSize: 40, fontWeight: FontWeight.bold),),
        Text(txt3, style: GoogleFonts.mPlus1(fontSize: 18),)
      ],
    );

  }

}

class Col3Cards{
  card1(){
    return SizedBox(
      height: 600, width: 450,
      child: Column(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)
              ),
              side: BorderSide(color: Colors.amber)
            ),
            elevation: 5,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/gat.jpg', height: 550, width: 360,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  card2 (String img, String txt){
    return SizedBox(
      height: 650, width: 450,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)
            ),
            side: BorderSide(color: Colors.amber)
        ),
        elevation: 5,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(txt, style: GoogleFonts.pavanam(fontSize: 18) ),
            ) ,
            Image.asset(img , height: 200, width: 300,)
          ],
        ),
      ),
    );
  }
  myCards(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 500,
          child: Column(
            children: <Widget>[
              Col3().rw2('RECENT CAMPAIGN', 'Community Development Projects', ''),
              Col3Cards().card1()
            ],
          ),
        ),
        const SizedBox(width: 50),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Buttons('View all campaign').elvatedBtn(),
                ],
              ),
            ),
            Col3Cards().card2(
                'assets/figure-1.png',
                'Originally, ADDRO was involved in general community development projects in '
                    'four of eight districts of the Upper East Region (UER), but have since widely '
                    'expanded activities, working in fifteen districts within six regions of Ghana. '
                    '\n \nIt is the Nets forLife (malaria programme) that is in all the regions.'
                    'Since the inception of this programme ADDRO has distributed over 990,304 LLINs '
                    'through its community entry approach and enhanced mass distribution campaigns. '
                    'Results of an external evaluation of these activities demonstrate a remarkable '
                    'increase in LLIN possession and utilization in the partners target areas of Ghana '
                    '(see Figure  below).'
            )
          ],
        ),
      ],
    );
  }
}
