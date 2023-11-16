import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletFooter extends StatelessWidget {
  const TabletFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const TabletFooter().col1(),
        const SizedBox(height: 50),
        Footer2().footer()
      ],
    );
  }
  col1(){
    var Uri;
    return   Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
           width: 400,
           child: Column(
             children: [
               Row(
                 children: [
                   Text(
                       'ABOUT ADDRO',
                     style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold,),
                   ),
                 ],
               ),
               const SizedBox(height: 30),
               Column(
                 children: [
                   Text('The Anglican Church of Northern Ghana started its first development project in 1971,'
                       ' undertaking irrigation farming projects. In 1978, the church launched the Anglican Church '
                       'Agricultural Project (ACAP) with the aim of meeting the needs of the poor.',
                     style: GoogleFonts.roboto(fontSize: 16),
                   ),
                 ],
               )
             ],
           ),
          ),

              const SizedBox(height: 30),

          SizedBox(
           width: 400,
            child: Column(
             children: [
                Column(
                 children: [
                   Text(
                       'LATEST POST',
                     style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold,),
                   ),
                 ],
               ),
               const SizedBox(height: 10),
               Column(
                 children: [
                  Image.asset('assets/33-1.jpg', height: 300,),
                   TextButton(
                       onPressed: (){},
                       child: Text(
                           'Integrated Community - Based Health Program',
                         style: GoogleFonts.roboto(fontSize: 16, color: Colors.amber.shade800),
                       )
                   )
                 ],
               )
             ],
           ),
          ),

          const SizedBox(height: 30),
          Column(
            children: <Widget>[
              SizedBox(
                width: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const VerticalDivider(
                          thickness: 10, color: Colors.black,
                        ),

                        Text(
                          'CONTACT INFO',
                          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    Text(
                      'We would like to hear from you. Please send us a message via Email!',
                      style: GoogleFonts.roboto(fontSize: 16),
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: [
                        Text(
                          'EMAIL',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),

                    Row(
                      children: [
                        InkWell(
                          onTap: () => launchUrl(Uri.parse('https://kologwright@gmail.com')),
                          child: const Text(
                            'info@addro.org',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    Row(
                      children: [
                        Text('CALL US ON', style: GoogleFonts.roboto(fontSize: 16),),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => launchUrl(Uri.parse('https://mail.google.com/')),
                          child: const Text(
                            '03820-22986 / 0203214314 / 0208784567',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }

}



class Footer2 {
  footer(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, size: 20,color: CupertinoColors.activeBlue,)),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, size: 20, color: Colors.blueAccent,)),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.instagram, size: 20, color: Colors.purple,)),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.google, size: 20, color: Colors.red,)),
              IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.pinterest, size: 20, color: Colors.pinkAccent,)),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text('Privacy & Policy', style: TextStyle(color: Colors.amber[800]))),
                  TextButton(onPressed: (){}, child: Text('Terms & Conditions', style: TextStyle(color: Colors.amber[800]))),
                  TextButton(onPressed: (){}, child: Text('FAQs', style: TextStyle(color: Colors.amber[800])))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Copyright © 2023 Addro.  Powered by'),
                  TextButton(
                      onPressed: (){},
                      child: Text('kologsoft', style: TextStyle(color: Colors.amber[800]),)
                  )
                ],
              ),
            ],
          ),

          InkWell(
            onTap: (){},
            child:Image.asset('assets/cropped-logo-1.jpg', height: 80,)
            ,
          )
        ],
      ),
    );
  }
}
