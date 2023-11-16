import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescaffold;
  final Widget desktopscaffold;
  final Widget tabletscaffold;
  const ResponsiveLayout({super.key, required this.mobilescaffold, required this.desktopscaffold, required this.tabletscaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
    context, constraints){
      if(constraints.maxWidth < 600){
        return mobilescaffold;
      } else if (constraints.maxWidth < 1200){
        return tabletscaffold;
      } else {return desktopscaffold;}
    });
  }
}
