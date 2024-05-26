import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

import '../../sections/Buttons.dart';
import '../../sections/Footer.dart';
import '../../Responsiveness/responsive_layout.dart';
import '../mobile_tabletScalffold/home.dart';
import 'home.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child:  Column(
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
                          Text('Gallery', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)
                        ],
                      ),
                      Row(
                        children: [
                          TextButtons(
                              buttonText: 'Home',
                              onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute
                                  (builder: (context)=>  const ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold(), )
                                )
                                );
                              },
                              backgroundColor: Colors.transparent,
                              overlayColor: Colors.transparent,
                              textColor: Colors.white
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(width: 15, height: 2, color: Colors.white,),
                          ),
                          const Text('Gallery',style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 15,
                      runSpacing: 10,
                      children: [
                        Images().images('assets/ECD committee.jpg', 'ECD Committee Meeting at Daborinsa'),
                        Images().images('assets/harvest.jpg', 'A project officer with caregivers during the harvest of their vegetables at Zaring community'),
                        Images().images('assets/meeting ECD promoter.jpg', 'Monthly reflection meeting with ECD promoters'),
                        Images().images('assets/fund dist.jpg', 'SwE Funds distribution with the committee'),
                        Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/ECD promoters.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/SwE meet.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/learning group meeting.jpg', 'Caregivers monthly support and learning group meeting'),                      Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/ECD promoters.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/SwE meet.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/learning group meeting.jpg', 'Caregivers monthly support and learning group meeting'),                      Images().images('assets/cooking.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/ECD promoters.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/SwE meet.jpg', 'Cooking demonstration - Asobilaga and Konguri'),
                        Images().images('assets/learning group meeting.jpg', 'Caregivers monthly support and learning group meeting'),
                      ],
                    ),
                  ),
                ],
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

class Images{
  images(String image, String description){
    return HoverAnimatedContainer(
      hoverHeight: 300,
      hoverWidth: 300,
      width: 400,
      height: 350,
      decoration: BoxDecoration(
        //color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image)
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Container(
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}