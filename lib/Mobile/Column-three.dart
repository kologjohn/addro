import 'package:ecommerce/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileCol3{

  rw1 (String txt, String txt2){
    return Column(
      children: <Widget>[
        Text(txt, style: GoogleFonts.abrilFatface( color: Colors.white, fontSize: 30)),
        Text(txt2, style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),)

      ],
    );
  }


  rw2(String txt, String txt2, String txt3){
   return Column(
      children: [
        Text(txt, style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 16),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            txt2,textAlign: TextAlign.center, style: GoogleFonts.playfairDisplay( fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(txt3, style: GoogleFonts.mPlus1(fontSize: 18),),
        )
      ],
    );

  }

}

class WorkOrganization extends StatefulWidget {
  const WorkOrganization({super.key});

  @override
  State<WorkOrganization> createState() => _WorkOrganizationState();
}

class _WorkOrganizationState extends State<WorkOrganization> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Wrap(
            spacing: 10,
            runAlignment: WrapAlignment.center,
            children: [
              const SizedBox(width: 20),
              Column(
                children: [
                  Column(
                    children: [
                      MobileCol3().rw2(
                          'WHAT WE DO',
                          'Organisation And Work',
                          'The Anglican Church of Northern Ghana started its first development project in 1971, '
                              'undertaking irrigation farming projects. In 1978, the church launched the Anglican '
                              'Church Agricultural Project (ACAP) with the aim of meeting the needs of the poor...'
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MobileCol3().rw1('OK+', 'VOLUNTEER'),
                              MobileCol3().rw1('O+', 'SPONSORS'),
                              MobileCol3().rw1('O', 'BRANCHES'),
                              MobileCol3().rw1('O+', 'AWARDS'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SizedBox(
                  //       child: Column(
                  //           children: <Widget>[
                  //             TextBtn('').Textbtn(Icons.check, 'Mission Statement',),
                  //             TextBtn('').Textbtn(Icons.check, 'Vision Statement'),
                  //           ]
                  //       ),
                  //     ),
                  //
                  //     Column(
                  //         children: <Widget>[
                  //           Cont().smlCont('51', 'YEARS', 'OF EXPERIENCE')]
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(height: 100,),
                  MobileCol3().rw2('RECENT CAMPAIGN', 'Community Development Projects', ''),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                children: <Widget>[
                  MyColCards().card2(
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
          )
        ],
      ),
    );
  }
}


class MyColCards{

  card2 (String img, String txt){
    return SizedBox(
     // height: 750, width: 450,
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
              padding: const EdgeInsets.all(10.0),
              child: Text(txt, style: GoogleFonts.pavanam(fontSize: 18) ),
            ) ,
            Image.asset(img , height: 200, width: 300,)
          ],
        ),
      ),
    );
  }
  myCards(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      ],
    );
  }
}
