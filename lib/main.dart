import 'package:ecommerce/responsive/desktop_scaffold.dart';
import 'package:ecommerce/responsive/mobile_scaffold.dart';
import 'package:ecommerce/responsive/responsive_layout.dart';
import 'package:ecommerce/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';


void main() {
  runApp(const Addro());
}

class Addro extends StatefulWidget {
  const Addro({super.key});

  @override
  State<Addro> createState() => _AddroState();
}

class _AddroState extends State<Addro> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen()
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset(
          'assets/loading2.json', height: 700, width: 700,
          options: LottieOptions(
            enableApplyingOpacityToLayers: true,
            enableMergePaths: true
          )
        ),
        nextScreen: const ResponsiveLayout(mobilescaffold: MobileScaffold(),tabletscaffold: TabletScaffold(),desktopscaffold: DesktopScaffold(),),
    );
  }
}

