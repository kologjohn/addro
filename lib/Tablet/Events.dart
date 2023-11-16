import 'package:ecommerce/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Desktop/Column-three.dart';
import 'Column-three.dart';

class TabletEvents extends StatelessWidget {
  const TabletEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Col3().rw2('RECENT EVENTS', 'Come To Our Events For More Info', ''),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Event().upComingEvent(
                Icons.alarm,
                Icons.location_on_outlined,
                'Community Development Projects',
                '8:00 am - 12:30 pm',
                'Upper East Region Bolgatanga- Ghana',
                'We professionally resource start-ups and boost trending business'
                    ' to continue to meet their market demand.',
              '15th MAY'
            ),

            const SizedBox(height: 30),

            Event().upComingEvent(
                Icons.alarm,
                Icons.location_on_outlined,
                'Collaborative Projects',
                '10:00 am - 2:30 pm',
                'Upper East Region Bolgatanga- Ghana',
                'We perform monitoring and business to keep them alive and in track.',
              '27th JUNE'
            )

          ],
        ),

        const SizedBox(height: 30),

        Buttons('View All Events').elvatedBtn(),

        const SizedBox(height: 100),
        Col3().rw2('MEET OUR TEAM', 'Our Optimistic Volunteer', ''),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Event().team(),
                  SizedBox(width: 20),
                  Event().team(),
                ],
              ),

              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Event().team(),
                  SizedBox(width: 20),
                  Event().team()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Event {
  upComingEvent(IconData icons,IconData iconData, String bigTxt, String txt,String txt2, String txt3, String contTxt)
  {
    return Column(
      children: [
        Column(
          children:[
            Container(
              width: 600,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
               color: Colors.black,
                image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  opacity: 0.5,
                  fit: BoxFit.cover,
                    image: AssetImage('assets/gat.jpg', )
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 80, width: 90,
                            decoration:  BoxDecoration(
                              color: Colors.amber[800],
                              borderRadius: const BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text(contTxt,textAlign: TextAlign.center, style: GoogleFonts.abrilFatface( color: Colors.white, fontSize: 22)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(bigTxt,
                      style: GoogleFonts.playfairDisplay
                        (fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(  icons, color: Colors.amber[800],),
                        Text(txt, style: GoogleFonts.roboto(color: Colors.white),),
                        const SizedBox(width: 8,),
                        Icon(iconData, color: Colors.amber[800],),
                        Text(txt2, style: GoogleFonts.roboto(color: Colors.white))
                      ],
                    ),
                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(txt3, style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Buttons('Book Now').elvatedBtn(),
                          const SizedBox(width: 20),
                          Button2('View Detail').elvatedBtn()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }

  team (){
    return Column(
      children: [
         Card(
           shape: RoundedRectangleBorder(
             side: BorderSide(color: Colors.amber.shade800, ),
             borderRadius: const BorderRadius.all(Radius.circular(10))
           ),
           elevation: 0.1,

          child: SizedBox(
            height: 280,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),

              child: Column(
                children: [
                  Col3().rw2(
                      'DIRECTOR',
                      'Addro',
                      'We perform monitoring and business to keep them alive and in track.'
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blueAccent,)),
                        IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlueAccent,)),
                        IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.purple,)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    ]
    );
  }
}