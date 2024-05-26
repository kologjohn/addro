import 'package:flutter/material.dart';

import '../../sections/AboutUs.dart';
import '../../sections/section.dart';
import '../../sections/Footer.dart';
import '../../sections/Projects.dart';
import '../../sections/header_sliders.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          const Projects(),
          const SizedBox(height: 30),
          Container(
              color: Colors.black26.withOpacity(0.05),
              child: const WhoWeAre()
          ),
          const Partners(),
          const Services(),
          const SizedBox(height: 30),
          const SupportUs(),
          const JoinUs(),
          const SizedBox(height: 30),
          Container(
              color: Colors.pink[900],
              child: const Footer()
          )
        ],
      ),
    );
  }
}
