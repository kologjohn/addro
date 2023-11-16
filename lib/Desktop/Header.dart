import 'package:ecommerce/Buttons.dart';
import 'package:ecommerce/Desktop/About_Us.dart';
import 'package:ecommerce/Desktop/Core_Values.dart';
import 'package:ecommerce/Desktop/content.dart';
import 'package:ecommerce/Desktop/pop_modal.dart';
import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:xen_popup_card/xen_popup_card.dart';
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
                      hoverColor: Colors.yellow,
                      onTap: () {
                        popmodal(context, 'MISSION STATEMENT', Content.mission, 'Close');
                      },
                      title: const Text('Mission'),
                    ),
                    ListTile(
                      onTap: () {
                        popmodal(context,"VISION STATEMENT",Content.mission,"Close");
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
              title: Title1('What we do').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Integrated Early Childhood Development'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Climate Resilience'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Economic Development (Savings With Education - SWE)'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Health Prevention and Outreach Project'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Soya Beans Value Chain'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Gender Equity and Social Inclusion'),
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
                      title: const Text('GHS'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('MoFA'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Dep\'t of Social Welfare'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          HoverMenu(
              title: Title1('Donors').Titletxt(),
            items: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Episcopal Relief & Development'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Health Partners of Canada'),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('SNV/2Scale'),
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

          Buttons('Donate now').elvatedBtn()
        ],
      ),
    );
  }
}
