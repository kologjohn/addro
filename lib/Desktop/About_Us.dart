import 'package:ecommerce/Desktop/Column-three.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 200),
            Col3().myColumn(),
            const SizedBox(height: 50),
            const History().content(
                'Brief History of ADDRO',
                '',
                'Anglican Diocesan Development and Relief Organization (ADDRO) is a registered '
                    'non-profit, non-governmental organization that seeks to transform life and uphold '
                    'human dignity and justice for all people, irrespective of ethnicity, sex, religious or '
                    'political affiliations. ADDRO currently has thirty-three (33) professional staff with '
                    'diverse experience in project design and management.\n'
                    '\nADDRO came into existence in response to the human needs of the Anglican Church in Northern Ghana. '
                    'In 1971, the church established a dry season irrigation-farming project to support the visually '
                    'impaired in communities to produce crops and vegetables during the dry season to improve their '
                    'standard of living. This project was called the Agriculture Rehabilitation for the Blind (ARB).\n'
                    '\nLater in 1978 a new development initiative known as Anglican Church Agricultural Project, '
                    '(ACAP) was launched to meet the socio-economic needs of the poor. The work of ACAP gave the Church '
                    'the opportunity to interact with the communities and made the Church realize that there were '
                    'greater needs, problems, and inequalities in the operational area. This led to the establishment '
                    'of more overt community development projects by parishes and certain individual members of the Church.\n'
                    '\nHowever, the efforts of these individual parish projects were not coordinated to reduce waste and '
                    'maximize the impact of such programmes on the beneficiaries. This led to the establishment of the '
                    'Anglican Diocesan Development and Relief Office (ADDRO) in 1996 to consolidate all the development efforts'
                    ' and initiatives of the Church. In 2006, the word ‘Office’ was changed to ‘Organization’.\n'
                    '\nIn 2008, ADDRO became an incorporated Organization with the recognition and approval of the '
                    'Government of Ghana via the Registrar General’s Department as a legal Limited Liability Company '
                    'with registration number CG.080152013.  It is also registered with the Department of Social Welfare '
                    'as a Non-Governmental Organization (NGO) with registration number D.S.W 4370. '
            )
          ],
        ),
      ),
    );
  }

  content( String headingTxt, String boldTxt, String normalText,){
    return  Column(
      children: [
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(headingTxt, style: GoogleFonts.playfairDisplay( fontSize: 30, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 900,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: boldTxt, style: GoogleFonts.roboto( fontWeight: FontWeight.bold, fontSize: 16)),
                  TextSpan(text: normalText, style: GoogleFonts.roboto( fontSize: 16))
                ]),

              ),
            ),
          ],
        ),
      ],
    );
  }
}


