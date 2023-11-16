import 'package:ecommerce/responsive/desktop_scaffold.dart';
import 'package:ecommerce/responsive/mobile_scaffold.dart';
import 'package:ecommerce/responsive/responsive_layout.dart';
import 'package:ecommerce/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'Mobile/pop_modal.dart';
import 'content.dart';
import 'Mobile/About_Us.dart';
import 'Mobile/Core_Values.dart';


class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.black45,
      height: 500,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber[300],
                    child: ListTile(
                      title: const Text('Home'),
                      leading: const Icon(Icons.home),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResponsiveLayout(mobilescaffold: MobileScaffold(),tabletscaffold: TabletScaffold(),desktopscaffold: DesktopScaffold(),)),
                        );
                      },
                    ),
                  ),
                ),
                ExpansionTile(
                  title: const Text('About'),
                  leading:  Icon(Icons.info, color: Colors.green.shade800),
                  children:[
                    ListTile(
                    title: const Text('Mission'),
                    onTap: (){
                      popmodal(context, 'MISSION STATEMENT', Content.vision, 'Close');
                      Navigator.pop(context, ());
                    },
                  ),
                    ListTile(
                    title: const Text('Vision'),
                    onTap: (){
                      popmodal(context,"VISION STATEMENT",Content.mission,"Close");
                      Navigator.pop(context, ());
                    },
                  ),
                    ListTile(
                    title: const Text('Core values'),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute
                        (builder: (context)=> const MobileCoreValues())
                      );
                    },
                  ),
                    ListTile(
                    title: const Text('History'),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute
                        (builder: (context)=> const MobileHistory())
                      );
                    },
                  ),
                    ListTile(
                    title: const Text('Reports'),
                    onTap: (){},
                  ),
                    ListTile(
                    title: const Text('Board & Staff'),
                    onTap: (){},
                  ),
                  ]
                ),

                ExpansionTile(
                  title: const Text('Thematic Programs Areas'),
                  leading:  Icon(Icons.nature_people, color: Colors.green.shade800,),
                  children:[
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

                  ]
                ),

                ExpansionTile(
                  title: const Text('Operation Area'),
                  leading:  Icon(Icons.construction, color: Colors.green.shade800),
                  children:[
                    ListTile(
                      title: const Text('Upper East'),
                    onTap: (){},
                  ),
                    ListTile(
                      title: const Text('Upper West'),
                    onTap: (){},
                  ),
                    ListTile(
                      title: const Text('Northern'),
                    onTap: (){},
                  ),
                    ListTile(
                      title: const Text('Eastern'),
                    onTap: (){},
                  ),
                    ListTile(
                      title: const Text('Ashanti'),
                    onTap: (){},
                  ),
                    ListTile(
                      title: const Text('Western North'),
                    onTap: (){},
                  ),
                  ]
                ),

                ExpansionTile(
                  title: const Text('Partners'),
                  leading:  Icon(Icons.diversity_3, color: Colors.green.shade800),
                  children:[
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
                  ]
                ),

                ExpansionTile(
                  title: const Text('Current Programs'),
                  leading:  Icon(Icons.wc, color: Colors.green.shade800),
                  children:[
                    ListTile(
                      onTap: () {
                        popmodal(context, 'Integrated Community Case Management (iCCM)', Programs.a, 'close');
                      },
                      title: const Text('ICCM'),
                    ),

                    ListTile(
                      onTap: () {
                        popmodal(context, 'Early Childhood Development and education (ECD)', Programs.b, 'close');
                      },
                      title: const Text('ECD'),
                    ),

                    ListTile(
                      onTap: () {
                        popmodal(context, 'Community-Based Malaria Control Project', Programs.c, 'close');
                      },
                      title: const Text('Community-Based Malaria Control Project'),
                    )

                    ,ListTile(
                      onTap: () {
                        popmodal(context, 'Health Outreach Prevention Education (HOPE)', Programs.d, 'close');
                      },
                      title: const Text('HOPE'),
                    ),

                    ListTile(
                      onTap: () {
                        popmodal(context, 'Northern Ghana Climate Resilience Program (NGCRP)', Programs.e, 'close');
                      },
                      title: const Text('NGCRP'),
                    ),

                    ListTile(
                      onTap: () {
                        popmodal(context, 'ADDRO-SNV Soybean Partnership', Programs.f, 'close');
                      },
                      title: const Text('ADDRO-SNV Soybean Partnership'),
                    ),

                    ListTile(
                      onTap: () {
                        popmodal(context, 'Savings with Education', Programs.g, 'close');
                      },
                      title: const Text('Savings with Education'),
                    ),
                  ]
                ),

                ExpansionTile(
                  title: const Text('Advertisement'),
                  leading:  Icon(Icons.featured_video, color: Colors.green.shade800),
                  children:[
                    ListTile(
                     title: const Text('Human Interest Story'),
                    onTap: (){},
                  ),
                    ListTile(
                     title: const Text('Gallery'),
                    onTap: (){},
                  ),
                    ListTile(
                     title: const Text('Adverts'),
                    onTap: (){},
                  ),
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
