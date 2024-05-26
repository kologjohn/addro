
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Responsiveness/responsive_layout.dart';
import '../../sections/Buttons.dart';
import '../../sections/Drawer.dart';
import '../../sections/Footer.dart';
import '../desktopScalffold/home.dart';
import 'home.dart';


class MobileAboutUs extends StatelessWidget {
  const MobileAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('ADDRO', style: GoogleFonts.roboto(fontSize: 30, color: Colors.white, letterSpacing: 1),),
        //   backgroundColor: Colors.pink,
        // ),
        endDrawer: const MobileDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.pink.shade900,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('About us', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)
                        ],
                      ),
                      Row(
                        children: [
                          TextButtons(
                              buttonText: 'Home',
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold())));
                              },
                              backgroundColor: Colors.transparent,
                              overlayColor: Colors.transparent,
                              textColor: Colors.white
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(width: 15, height: 2, color: Colors.white,),
                          ),
                          const Text('About us',style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Wrap(
                                spacing: 5,
                                runSpacing: 5,
                                children: [
                                  Container(
                                    color: Colors.white54,
                                    //height: 500,
                                    width: 550,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Vision",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Text("A transformed society living meaningful and dignified lives."),
                                          SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Mission",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Text("ADDRO exists to respond to the human needs of the people of "
                                              "Ghana to enable them live dignified lives."),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 500,
                                      width: 550,
                                      decoration: BoxDecoration(
                                        //color: Colors.white,
                                        color: Colors.lightGreen[50],
                                        border: const Border(
                                          top: BorderSide(color: Colors.white, width: 10.0), // Top border
                                          left: BorderSide(color: Colors.white, width: 10.0), // Left border
                                          right: BorderSide(color: Colors.white, width: 10.0), // Right border
                                          bottom: BorderSide(color: Colors.white, width: 10.0), // Bottom border
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/ECD promoters.jpg",

                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 1105,
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('CORE VALUES', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)),
                                    SizedBox(height: 24),
                                    Text('1)  Mutual respect: ADDRO believes that there is something of value in every human being. '
                                        'We believe that respecting the people we serve is an important part of this value. '
                                        'We care for each other’s thoughts and feelings'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '2)  Efficiency: ADDRO takes deliberate decisions that help avoid wastage of time and effort. '
                                            'ADDRO is prudent in the use of resources; both human and financial.'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '3)  Promotion of human dignity, rights, and justice: ADDRO works to promote and protect the human person’s intrinsic worth. '
                                            'ADDRO places value on all people. ADDRO is also working at ensuring that the human '
                                            'rights of all people are respected, protected, and fulfilled.'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '4)	Empowering and liberating communities: ADDRO believes that there is something of value in every human being. '
                                            'We believe that respecting the people we serve is an important part of this value. '
                                            'We care for each other’s thoughts and feelings'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '5)	Honesty, transparency, and accountability: In the administration of ADDRO, integrity refers to “honesty” or “trustworthiness” in the '
                                            'discharge of our duties, serving as an antithesis to “corruption” or “the abuse of office.” '
                                            'ADDRO has the obligation to both its donors and beneficiaries.'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '6)	Equity and Inclusiveness: As an equitable and inclusive organization, ADDRO guarantees that personal or socio-economic '
                                            'circumstances, such as gender, ethnic origin, or family background, are not obstacles to success '
                                            'and access to social and economic services.'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '7)	Result-oriented: ADDRO focuses on outcome rather than the process used to deliver a service. '
                                            'ADDRO always keeps the focus on achieving results as per the goals set.'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '8)	Commitment: ADDRO’s willingness to give time and energy to things that we believe in, or a '
                                            'promise or firm decision to do something..'
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '9)	Partnership building: ADDRO’s Partnerships are intended for joint solving of problems, resource exchange, '
                                            'cooperation, coordination, and coalition building. ADDRO believes in a partnership model '
                                            'that brings together institutional capabilities and human resources in the form of skills, '
                                            'experiences, and ideas to tackle common problems that are often beyond the capacity of a single '
                                            'organization or group.'
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.lightGreen[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Wrap(
                                spacing: 5,
                                runSpacing: 5,
                                children: [
                                  Container(
                                      height: 500,
                                      width: 550,
                                      decoration: BoxDecoration(
                                        //color: Colors.white,
                                        color: Colors.lightGreen[50],
                                        // border: const Border(
                                        //   top: BorderSide(color: Colors.white, width: 10.0), // Top border
                                        //   left: BorderSide(color: Colors.white, width: 10.0), // Left border
                                        //   right: BorderSide(color: Colors.white, width: 10.0), // Right border
                                        //   bottom: BorderSide(color: Colors.white, width: 10.0), // Bottom border
                                        // ),
                                      ),
                                      child: Image.asset(
                                        'assets/33-1.jpg',
                                        fit: BoxFit.contain,
                                      )
                                  ),
                                  Container(
                                    color: Colors.lightGreen[50],
                                    //height: 500,
                                    width: 550,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 16),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BRIEF HISTORY OF ADDRO",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16
                                                ),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 20),
                                          Text(
                                              'Anglican Diocesan Development and Relief Organization (ADDRO) is a registered '
                                                  'non-profit, non-governmental organization that seeks to transform life and uphold '
                                                  'human dignity and justice for all people, irrespective of ethnicity, sex, religious or '
                                                  'political affiliations. ADDRO currently has thirty-three (33) professional staff with '
                                                  'diverse experience in project design and management.'),
                                          SizedBox(height: 8),
                                          Text(
                                              'ADDRO came into existence in response to the human needs of the Anglican Church in Northern Ghana. '
                                                  'In 1971, the church established a dry season irrigation-farming project to support the visually '
                                                  'impaired in communities to produce crops and vegetables during the dry season to improve their '
                                                  'standard of living. This project was called the Agriculture Rehabilitation for the Blind (ARB).'
                                                  'Later in 1978 a new development initiative known as Anglican Church Agricultural Project, '
                                                  '(ACAP) was launched to meet the socio-economic needs of the poor.'),

                                          SizedBox(height: 8),
                                          Text(
                                              ' This led to the establishment of the Anglican Diocesan Development and Relief Office (ADDRO) in 1996 to consolidate all the development efforts'
                                                  ' and initiatives of the Church. In 2006, the word ‘Office’ was changed to ‘Organization’.'
                                                  'In 2008, ADDRO became an incorporated Organization with the recognition and approval of the '
                                                  'Government of Ghana via the Registrar General’s Department as a legal Limited Liability Company '
                                                  'with registration number CG.080152013.  It is also registered with the Department of Social Welfare '
                                                  'as a Non-Governmental Organization (NGO) with registration number D.S.W 4370. '),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Wrap(
                                spacing: 5,
                                runSpacing: 5,
                                children: [
                                  Container(
                                    color: Colors.lightGreen[50],
                                    //height: 500,
                                    width: 550,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "THEMATIC PROGRAMMED AREAS",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18
                                                    ),
                                                  ),

                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Text('ADDRO works in the following seven (7) thematic areas to create the most holistic impact on communities'),
                                          SizedBox(height: 8),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Agriculture and sustainable livelihoods"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Community-Based Health"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Gender Equity and Social Inclusion (GESI)"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Environment and Climate Change"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Governance and peace building"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Disaster  and relief"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Education and Capacity development"),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.lightGreen[50],
                                    //height: 500,
                                    width: 550,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "WHAT WE DO?",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 70,
                                                    height: 3,
                                                    // color: Global.mainColor,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Agriculture and sustainable livelihoods"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Gender Equity and Social Inclusion (GESI))"),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Environment and Climate Change"),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Governance and peace building"),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Disaster and relief"),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Integrated Early Childhood Development"),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Health Prevention and Promotion"),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(" • ", style: TextStyle(fontSize: 30),),
                                              Expanded(
                                                child: Text("Soya Beans Value and Chain"),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.pink.shade900,
                  child: const Footer()
              )
            ],
          ),
        ),
      ),
    );
  }
}
