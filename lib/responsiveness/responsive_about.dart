import 'package:flutter/material.dart';

class ResponsiveAbout extends StatelessWidget {
  final Widget mobileAbout;
  final Widget desktopAbout;
  //final Widget tabletScaffold;
  const ResponsiveAbout({super.key, required this.mobileAbout, required this.desktopAbout,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(builder: (
            context, constraints){
          if(constraints.maxWidth < 800){
            return mobileAbout;
          }  else {return desktopAbout;}
        }),
      ),

    );
  }
}
