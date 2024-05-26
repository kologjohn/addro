import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'Buttons.dart';
import '../main.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Text(
              'Latest Post',
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ))),
          const SizedBox(width: 250, child: Dividers(newColor: Colors.black,)),
          const SizedBox(height: 50,),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              blog(
                  Icons.folder_copy_outlined,
                  'Donate',
                  'Integrated Community - Based Health Program',
                  'ADDRO’s health program was focused mainly on carrying out malaria intervention activities…',
                  'assets/33-1.jpg',
                      (){}
              ),

              blog(
                  Icons.folder_copy_outlined,
                  'Donate',
                  'Community Development Projects',
                  'Originally, ADDRO was involved in general community development projects in four of…',
                  'assets/m8-1.jpg',
                      (){}
              ),
              blog(
                  Icons.folder_copy_outlined,
                  'Donate',
                  'Integrated Community - Based Health Program',
                  'ADDRO’s health program was focused mainly on carrying out malaria intervention activities…',
                  'assets/33-1.jpg',
                      (){}
              ),
              blog(
                  Icons.folder_copy_outlined,
                  'Donate',
                  'Community Development Projects',
                  'Originally, ADDRO was involved in general community development projects in four of…',
                  'assets/m8-1.jpg',
                      (){}
              )

            ],
          ),
          const EventsAndTeam()
        ],
      ),
    );
  }
  blog(IconData iconData, String buttonText, String name, String description, String img,  void Function()? onPressed ){
    return Column(
      children: [
        SizedBox(
          width: 300,
          child:  Card(
            child: Column(
              children:[
                const SizedBox(height: 20),
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 110,
                    child: ElevatedButton.icon(
                      style:  ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green[700]),
                        overlayColor:  const MaterialStatePropertyAll(Colors.transparent),
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                              (Set<MaterialState> states) {
                            return const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(40))
                            );
                          },
                        ),
                      ),
                      onPressed: onPressed,
                      icon: Icon(iconData, color: Colors.white),
                      label: Text(buttonText, style: GoogleFonts.roboto(color: Colors.white),),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverButton(
                      onpressed: () {},
                      child: Text(
                        name,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal[800]),
                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description, style: GoogleFonts.roboto(fontSize: 16,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EventsAndTeam extends StatelessWidget {
  const EventsAndTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
              'Recent Events',
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ))
          ),
          const SizedBox(width: 300, child: Dividers(newColor: Colors.black,)),
          const SizedBox(height: 50,),
          Wrap(
            spacing: 10,
            runSpacing: 10,
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

              Event().upComingEvent(
                  Icons.alarm,
                  Icons.location_on_outlined,
                  'Collaborative Projects',
                  '10:00 am - 2:30 pm',
                  'Upper East Region Bolgatanga- Ghana',
                  'We perform monitoring and business to keep them alive and in track.',
                  '27th JUNE'
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Team()
        ],
      ),
    );
  }
}


class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text(
              'Meet Our Team',
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ))
          ),
          const SizedBox(width: 300, child: Dividers(newColor: Colors.black,)),
          const SizedBox(height: 50,),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Event().team('DIRECTOR', 'Addro', 'We perform monitoring and business to keep them alive and in track.'),
              Event().team('MANAGER', 'Addro', 'We perform monitoring and business to keep them alive and in track.'),
              Event().team('PROMOTER', 'Addro', 'We perform monitoring and business to keep them alive and in track.'),
              Event().team('SECRETARY', 'Addro', 'We perform monitoring and business to keep them alive and in track.'),
              Event().team('DIRECTOR', 'Addro', 'We perform monitoring and business to keep them alive and in track.'),
            ],
          )
        ],
      ),
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
              width: 450,
              height: 450,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.black,
                image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    opacity: 0.2,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/gat.jpg', )
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 80, width: 90,
                            decoration:  const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Center(child: Text(contTxt,textAlign: TextAlign.center, style: GoogleFonts.abrilFatface( color: Colors.pink, fontSize: 14))),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(bigTxt,
                        style: GoogleFonts.playfairDisplay
                          (fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
                    ),
                    const SizedBox(height: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Row(
                          children: [
                            Icon(  icons, color: Colors.amber[800],),
                            Text(txt, style: GoogleFonts.roboto(color: Colors.white),),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(iconData, color: Colors.amber[800],),
                            Text(txt2, style: GoogleFonts.roboto(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(txt3, style: GoogleFonts.roboto(color: Colors.white, fontSize: 16)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Buttons(
                            buttonText: 'Book Now',
                            onPressed: (){},
                            backgroundColor: Colors.white,
                            overlayColor: Colors.transparent, textColor: Colors.black,
                          ),
                          const SizedBox(width: 20),
                          Buttons(
                            buttonText: 'View Details',
                            onPressed: (){},
                            backgroundColor: Colors.yellow.shade700,
                            overlayColor: Colors.transparent, textColor: Colors.white,
                          ),
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

  team (String position, String name, String speech){
    return Column(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.brown, ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            elevation: 0.1,

            child: SizedBox(
              height: 280,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: Column(
                  children: [
                    Text(position, style: GoogleFonts.playfairDisplay( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(name, style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 18),),
                    ),

                    Text(speech, style: GoogleFonts.mPlus1(color: Colors.black),),

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
