import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../sections/Buttons.dart';
import '../../sections/Drawer.dart';
import '../../sections/Footer.dart';
import '../../Responsiveness/responsive_layout.dart';
import '../../sections/blog_events.dart';
import '../desktopScalffold/home.dart';
import 'home.dart';

class MobileBlogEvents extends StatelessWidget {
  const MobileBlogEvents({super.key});

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
                          const Text('Blog-Team',style: TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 2),)
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
