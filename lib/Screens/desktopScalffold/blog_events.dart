import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../sections/Buttons.dart';
import '../../sections/Footer.dart';
import '../../Responsiveness/responsive_layout.dart';
import '../../sections/blog_events.dart';
import '../mobile_tabletScalffold/home.dart';
import 'home.dart';
class DesktopBlogEvents extends StatelessWidget {
  const DesktopBlogEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             // const AppBarData(),
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
                          Text('Blog/Events', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)
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
                          const Text('Blog-Events',style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Blog(),
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
