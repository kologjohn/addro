import 'package:flutter/material.dart';

class ResponsiveGallery extends StatelessWidget {
  final Widget mobileGallery;
  final Widget desktopGallery;
  //final Widget tabletScaffold;
  const ResponsiveGallery({super.key, required this.mobileGallery, required this.desktopGallery,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(builder: (
            context, constraints){
          if(constraints.maxWidth < 800){
            return mobileGallery;
          }  else {return desktopGallery;}
        }),
      ),

    );
  }
}
