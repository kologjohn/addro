import 'package:ecommerce/Desktop/Column-three.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoreValues extends StatelessWidget {
  const CoreValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 200),
              Col3().myColumn(),

              const SizedBox(height: 50,),

              Column(
                children: [
                  Text('CORE VALUES', style: GoogleFonts.playfairDisplay( fontSize: 40, fontWeight: FontWeight.bold)),
                  const CoreValues().content(
                      '1)  Mutual respect: ',
                      'ADDRO believes that there is something of value in every human being. '
                          'We believe that respecting the people we serve is an important part of this value. '
                          'We care for each other’s thoughts and feelings'
                  ),
                  const CoreValues().content(
                      '2)  Efficiency',
                      'ADDRO takes deliberate decisions that help avoid wastage of time and effort. '
                          'ADDRO is prudent in the use of resources; both human and financial.'
                  ),
                  const CoreValues().content(
                      '3)  Promotion of human dignity, rights, and justice: ',
                      'ADDRO works to promote and protect the human person’s intrinsic worth. '
                          'ADDRO places value on all people. ADDRO is also working at ensuring that the human '
                          'rights of all people are respected, protected, and fulfilled.'
                  ),
                  const CoreValues().content(
                      '4)	Empowering and liberating communities: ',
                      'ADDRO believes that there is something of value in every human being. '
                          'We believe that respecting the people we serve is an important part of this value. '
                          'We care for each other’s thoughts and feelings'
                  ),
                  const CoreValues().content(
                      '5)	Honesty, transparency, and accountability: ',
                      'In the administration of ADDRO, integrity refers to “honesty” or “trustworthiness” in the '
                          'discharge of our duties, serving as an antithesis to “corruption” or “the abuse of office.” '
                          'ADDRO has the obligation to both its donors and beneficiaries.'
                  ),
                  const CoreValues().content(
                      '6)	Equity and Inclusiveness: ',
                      'As an equitable and inclusive organization, ADDRO guarantees that personal or socio-economic '
                          'circumstances, such as gender, ethnic origin, or family background, are not obstacles to success '
                          'and access to social and economic services.'
                  ),
                  const CoreValues().content(
                      '7)	Result-oriented: ',
                      'ADDRO focuses on outcome rather than the process used to deliver a service. '
                          'ADDRO always keeps the focus on achieving results as per the goals set.'
                  ),
                  const CoreValues().content(
                      '8)	Commitment: ',
                      'ADDRO’s willingness to give time and energy to things that we believe in, or a '
                          'promise or firm decision to do something..'
                  ),
                  const CoreValues().content(
                      '9)	Partnership building: ',
                      'ADDRO’s Partnerships are intended for joint solving of problems, resource exchange, '
                          'cooperation, coordination, and coalition building. ADDRO believes in a partnership model '
                          'that brings together institutional capabilities and human resources in the form of skills, '
                          'experiences, and ideas to tackle common problems that are often beyond the capacity of a single '
                          'organization or group.'
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  content( String boldTxt, String normalText,){
    return  Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: 900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: boldTxt, style: GoogleFonts.roboto( fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(text: normalText, style: GoogleFonts.roboto( fontSize: 18))
                  ]),

                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 50)

      ],
    );
  }
}


