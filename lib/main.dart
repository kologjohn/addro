import 'package:ecommerce/responsive/desktop_scaffold.dart';
import 'package:ecommerce/responsive/mobile_scaffold.dart';
import 'package:ecommerce/responsive/responsive_layout.dart';
import 'package:ecommerce/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobilescaffold: MobileScaffold(),tabletscaffold: TabletScaffold(),desktopscaffold: DesktopScaffold(),),

    );
  }
}
