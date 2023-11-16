import 'package:ecommerce/Buttons.dart';
import 'package:ecommerce/Desktop/About_Us.dart';
import 'package:ecommerce/Desktop/Core_Values.dart';
import 'package:ecommerce/content.dart';
import 'package:ecommerce/Desktop/pop_modal.dart';
import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextBtn('Home').TxtBtn(),

           HoverMenu(
              title: Title1('About Us').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        vmPopmodal(context, 'MISSION STATEMENT', Content.vision, 'Close');
                      },
                      title: const Text('Mission'),
                    ),
                    ListTile(
                      onTap: () {
                        vmPopmodal(context,"VISION STATEMENT",Content.mission,"Close");
                        },
                      title: const Text('Vision'),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CoreValues(),
                            )
                        );
                      },
                      title: const Text('Core values'),
                    ),

                    ListTile(
                      onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const History(),
                          )
                      );},
                      title: const Text('History'),
                    ),

                    ListTile(
                      onTap: () {},
                      title: const Text('Reports'),
                    ),

                    ListTile(
                      onTap: () {},
                      title: const Text('Staff'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HoverMenu(
              title: Title1('Thematic Programs Areas').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Agriculture and sustainable livelihoods'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Health'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Gender Equity and Social Inclusion (GESI))'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Environment and Climate Change'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Governance and peace building'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Disaster and relief'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Education and Capacity development'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HoverMenu(
              title: Title1('Operation areas').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Upper East'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Upper West'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Northern'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Eastern'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Ashanti'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Western north'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HoverMenu(
              title: Title1('Partners').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('HPIC'),
                    ),

                    ListTile(
                      onTap: () {},
                      title: const Text('SNV (Netherlands)'),
                    ),

                    ListTile(
                      onTap: () {},
                      title: const Text('Episcopal Relief and Development (USA)'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Comic Relief (UK)'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          HoverMenu(
              title: Title1('Current Programs').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Integrated Community Case Management (iCCM)', Programs.a, 'close');
                      },
                      title: const Text('ICCM'),
                    ),

                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Early Childhood Development and education (ECD)', Programs.b, 'close');
                      },
                      title: const Text('ECD'),
                    ),

                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Community-Based Malaria Control Project', Programs.c, 'close');
                      },
                      title: const Text('Community-Based Malaria Control Project'),
                    )

                    ,ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Health Outreach Prevention Education (HOPE)', Programs.d, 'close');
                      },
                      title: const Text('HOPE'),
                    ),

                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Northern Ghana Climate Resilience Program (NGCRP)', Programs.e, 'close');
                      },
                      title: const Text('NGCRP'),
                    ),

                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'ADDRO-SNV Soybean Partnership', Programs.f, 'close');
                      },
                      title: const Text('ADDRO-SNV Soybean Partnership'),
                    ),

                    ListTile(
                      onTap: () {
                        desktopPopmodal(context, 'Savings with Education', Programs.g, 'close');
                      },
                      title: const Text('Savings with Education'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          HoverMenu(
              title: Title1('Advertisement').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Human Interest Story'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Gallery'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Adverts'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          DonateBtn('Donate now').elvatedBtn()
        ],
      ),
    );
  }
}
