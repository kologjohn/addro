import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 100,),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 10,
          runSpacing: 10,
          children: [
            Container(
              height: 400,
              width: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('assets/about.jpg')
                  )
              ),
            ),

            SizedBox(
             // height: 500,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('Who We Are', style: GoogleFonts.playfairDisplay(fontSize: 22, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    const Text(
                        'The Anglican Church of Northern Ghana Started its first development project in 1971, '
                            'Undertaking irrigation Farming projects. In 1978 the church launched Anglican '
                            'church agricultural project with the aim of meeting the needs of the poor'
                    ),
                    const SizedBox(height: 35),
                    Text('Mission', style: GoogleFonts.playfairDisplay(fontSize: 22, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    const Text('ADDRO exists to respond to the human needs of the people of Ghana to enable them live dignified lives.'),
                    const SizedBox(height: 35),
                    Text('Vision', style: GoogleFonts.playfairDisplay(fontSize: 22, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    const Text('A transformed society living meaningful and dignified lives.'),
                    const SizedBox(height: 100,)
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class Partners extends StatelessWidget {
  const Partners({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage('assets/section-bg1.jpg')
          )
        ),
        child:  Column(
          children: [
            Text('Our Partners', style: GoogleFonts.playfairDisplay(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(width: 250, child: Dividers(newColor: Colors.white,)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                runSpacing: 20,
                spacing: 50,
                //runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/HPIC.jpg'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'HPIC',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/SNV.jpg'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'SNV',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/USA.png'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'ERD (USA)',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/UK.jpg'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'CR (UK)',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/ghs.jpg'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'GHS',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/ges.png'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'GES',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/dfa.png'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'DoFA',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/dsw.jpeg'),
                        radius: 40,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'DoSW',
                        style: GoogleFonts.roboto(
                            fontSize: 26, letterSpacing: 3, color: Colors.white, fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 50,),
        Text('What We Do?', style: GoogleFonts.playfairDisplay(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)),
        const SizedBox(width: 250, child: Dividers(newColor: Colors.black,)),
        const SizedBox(height: 50,),
        Wrap(
          runSpacing: 50,
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/agric.svg', width: 50,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Agriculture and sustainable livelihoods", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/count-icon4.svg', color: Colors.pinkAccent,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Gender Equity and Social Inclusion (GESI))", style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
            ),

            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/climate.svg', width: 50,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Environment and Climate Change", style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
            ),

            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/count-icon3.svg', color: Colors.pinkAccent,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Governance and peace building", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/disater.svg', width: 50,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Disaster and relief", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/count-icon2.svg', color: Colors.pinkAccent,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Integrated Early Childhood Development", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/agric.svg', color: Colors.pinkAccent, width: 50,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Soya beans Value and Chain", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 50,
                    child: SvgPicture.asset('assets/count-icon2.svg', color: Colors.pinkAccent,),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Health Prevention and Promotion", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
