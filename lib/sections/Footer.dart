import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../responsiveness/responsive_about.dart';
import '../responsiveness/responsive_gallery.dart';
import '../responsiveness/responsive_projects.dart';
import 'Buttons.dart';
import '../Responsiveness/responsive_layout.dart';
import '../Screens/desktopScalffold/aboutUs.dart';
import '../Screens/desktopScalffold/blog_events.dart';
import '../Screens/desktopScalffold/gallery.dart';
import '../Screens/desktopScalffold/home.dart';
import '../Screens/mobile_tabletScalffold/aboutUs.dart';
import '../Screens/mobile_tabletScalffold/blog_events.dart';
import '../Screens/mobile_tabletScalffold/gallery.dart';
import '../Screens/mobile_tabletScalffold/home.dart';
import '../main.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 30,
            runSpacing: 10,
            children: [
              const SizedBox(
               height: 200, width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Locate us', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    ),
                    VerticalDivider(thickness: 2,indent: 5, endIndent: 5, color: Colors.white54,),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Upper East Region', style: TextStyle( fontSize: 16, color: Colors.white54),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ghana/West-Africa', style: TextStyle(color: Colors.white54, fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Bolgatanga', style: TextStyle(color: Colors.white54, fontSize: 16)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200, width: 300,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Quick Links', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    ),
                    TextButtons(
                        textColor: Colors.white54,
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute
                            (builder: (context)=> const ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold(),)
                          )
                          );
                        },
                        buttonText: 'Home', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
                    TextButtons(
                        textColor: Colors.white54,
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=> const ResponsiveAbout(
                                  mobileAbout: MobileAboutUs(),
                                  desktopAbout: DesktopAbout()
                              )
                          )
                          );
                        },
                        buttonText: 'About us', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
                    TextButtons(
                        textColor: Colors.white54,
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=> const ResponsiveBlogEvents(
                                  mobileBlog: MobileBlogEvents(),
                                  desktopBlog: DesktopBlogEvents()
                              )
                          )
                          );
                        },
                        buttonText: 'Blog', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
                    TextButtons(
                        textColor: Colors.white54,
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=> const ResponsiveGallery(
                                  mobileGallery: MobileGallery(),
                                  desktopGallery: GalleryPage()
                              )
                          )
                          );
                        },
                        buttonText: 'Gallery', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),

                  ],
                ),
              ),
              SizedBox(
                height: 200, width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Get Intouch', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.mail, color: Colors.white, size: 16,),
                        ),
                        Text('info@addro.org', style: TextStyle(color: Colors.white54),),
                      ],
                    ),
                    const Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.call, color: Colors.white, size: 16,),
                          ),

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('0203214314 / 0382022986', style: TextStyle(color: Colors.white54),),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          //const Text('We are social', style: TextStyle(color:Colors.white),),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, size: 16,color: CupertinoColors.white,)),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, size: 16,color: CupertinoColors.white,)),
                          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.linkedin, size: 16,color: CupertinoColors.white,)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Dividers(newColor: Colors.white,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Text(
                        'Copyright © 2024 Addro.  Powered by',
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: TextButton(
                        onPressed: (){},
                        child: Text('kologsoft.', style: TextStyle(color: Colors.amber[800]),)
                    ),
                  ),
                  const Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Text(
                        'All rights reserved',
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
