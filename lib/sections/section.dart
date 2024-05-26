import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Buttons.dart';

class SupportUs extends StatelessWidget {
  const SupportUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage('assets/section-bg2.jpg')
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, right: 30),
                child: Container(
                  width: 400,
                  //height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            'Support Addro Beneficiaries',
                            style: GoogleFonts.playfairDisplay(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold
                                ))
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                            'The Anglican Church of Northern Ghana Started its first development project in 1971, '
                                'Undertaking irrigation Farming projects. In 1978 the church launched Anglican '
                                'church agricultural project with the aim of meeting the needs of the poor'
                        ),
                      ),
                      Buttons(
                          buttonText: 'Donate to us',
                          onPressed: (){},
                          backgroundColor: Colors.pinkAccent,
                          overlayColor: Colors.pink,
                          textColor: Colors.white
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const SizedBox(height: 100),
        Wrap(
          spacing: 30,
          runSpacing: 10,
          children: [
            SizedBox(
              width: 400,
             // height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'Join Addro Today',
                        style: GoogleFonts.playfairDisplay(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                            ))
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        'The Anglican Church of Northern Ghana Started its first development project in 1971, '
                            'Undertaking irrigation Farming projects. In 1978 the church launched Anglican '
                            'church agricultural project with the aim of meeting the needs of the poor'
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Buttons(
                        buttonText: 'Join us',
                        onPressed: (){},
                        backgroundColor: Colors.pinkAccent,
                        overlayColor: Colors.pink,
                        textColor: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: 500,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/joining1.jpg')
                )
              ),
            ),
          ],
        )

      ],
    );
  }
}
