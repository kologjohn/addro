import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Screens/desktopScalffold/blog_events.dart';
import '../Screens/mobile_tabletScalffold/blog_events.dart';
import '../responsiveness/responsive_about.dart';
import '../responsiveness/responsive_gallery.dart';
import '../responsiveness/responsive_projects.dart';
import 'Buttons.dart';
import '../Responsiveness/responsive_layout.dart';
import '../Screens/desktopScalffold/aboutUs.dart';
import '../Screens/desktopScalffold/gallery.dart';
import '../Screens/desktopScalffold/home.dart';
import '../Screens/mobile_tabletScalffold/aboutUs.dart';
import '../Screens/mobile_tabletScalffold/gallery.dart';
import '../Screens/mobile_tabletScalffold/home.dart';
import '../main.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.pink,
          height: 50,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.call, color: CupertinoColors.white, size: 16,),
                  ),

                  Text('0203214314/0382022986', style: TextStyle(color: CupertinoColors.white),),

                  Padding(padding: EdgeInsets.all(8.0), child: VerticalDivider(width: 2, indent: 5,endIndent: 5, color: CupertinoColors.white,),),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.mail, color: CupertinoColors.white, size: 16,),
                  ),

                  Text('info@addro.org', style: TextStyle(color: CupertinoColors.white),),

                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, size: 20,color: CupertinoColors.white,)),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, size: 20,color: CupertinoColors.white,)),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.linkedin, size: 20,color: CupertinoColors.white,)),

                ],
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: const Text('ADDRO', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),),
                    //child: Image.asset('assets/logo.png')
                ),
                const Menus(),
              ],
            ),
          ),
        ),
        CarouselSlider(
            items: const [
              Sliders(
                  img: 'assets/ECD promoters.jpg',
                  text: 'LETS BUILD THE BETTER WORLD TOGETHER',
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Sliders(
                  img: 'assets/harvest.jpg',
                  text: 'THE ANGLICAN CHURCH OF NORTHERN GHANA',
                crossAxisAlignment: CrossAxisAlignment.start,

              ),
              Sliders(
                  img: 'assets/SwE meet.jpg',
                  text: 'The Anglican Church of Northern Ghana Started its first development project in 1971, '
                  'Undertaking irrigation Farming projects. In 1978 the church launched Anglican '
                  'church agricultural project with the aim of meeting the needs of the poor',
                crossAxisAlignment: CrossAxisAlignment.end,

              ),
            ],
            options: CarouselOptions(
                height: 500,
                aspectRatio: 18/9,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 8),
                enlargeCenterPage: true,
                viewportFraction: 1.0
            )
        )
      ],
    );
  }
}


class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButtons(textColor: Colors.green,
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute
                (builder: (context)=> const ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold(),)
              )
              );
            },
            buttonText: 'Home', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
        TextButtons(
            textColor: Colors.black,
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute
                (builder: (context)=> const ResponsiveAbout(mobileAbout: MobileAboutUs(), desktopAbout: DesktopAbout()))
              );
            },
            buttonText: 'About us', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),
        TextButtons(
            textColor: Colors.black,
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute
                (builder: (context)=> const ResponsiveGallery(mobileGallery: MobileGallery(), desktopGallery: GalleryPage()))
              );
            },
            buttonText: 'Gallery', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),

        HoverMenu(
          title: const Text('Operation areas', style: TextStyle(color: Colors.black)),
          items: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: const Text('Upper East'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Upper West'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Northern'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Eastern'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Ashanti'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Western north'),
                  ),
                ],
              ),
            ),
          ],
        ),

        TextButtons(
            textColor: Colors.black,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  const ResponsiveBlogEvents(mobileBlog: MobileBlogEvents(), desktopBlog: DesktopBlogEvents())));
            },
            buttonText: 'Blog', backgroundColor: Colors.transparent, overlayColor: Colors.transparent),

        HoverMenu(
          title: const Text('Programs', style: TextStyle(color: Colors.black)),
          items: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: const Text('ICCM'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Early Childhood Development'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Community-Based Malaria Control Project'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('HOPE'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text(' Northern Ghana Climate Resilience Programme'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('ADDRO-SNV Soybean Partnership'),
                  ),
                  const Dividers(newColor: Colors.black,),
                  ListTile(
                    onTap: () {},
                    title: const Text('Savings with Education'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class Sliders extends StatelessWidget {
  final String img;
  final String text;
  final CrossAxisAlignment crossAxisAlignment;
  const Sliders({super.key, required this.img, required this.text, required this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 550,
      decoration:  BoxDecoration(
        image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            //opacity: 0.2,
            image: AssetImage(img,)
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  color: Colors.black.withOpacity(0.7) ,
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //const SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              text,
                              style: const TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 20, color: Colors.white,
                                  letterSpacing: 1
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      ),

    );
  }
}

