import 'package:flutter/material.dart';

import 'Responsiveness/responsive_layout.dart';
import 'Screens/desktopScalffold/home.dart';
import 'Screens/mobile_tabletScalffold/home.dart';

void main (){
  runApp(const ADDRO());
}
class ADDRO extends StatefulWidget {
  const ADDRO({super.key});

  @override
  State<ADDRO> createState() => _ADDROState();
}

class _ADDROState extends State<ADDRO> {
  @override
  Widget build(BuildContext context) {
    return    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold())
      ),
    );
  }
}


class Dividers extends StatelessWidget {
  final Color newColor;
  const Dividers({super.key, required this.newColor});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      thickness: 0.2,
      indent: 5,
      endIndent: 5,
      color: newColor,
    );
  }
}

