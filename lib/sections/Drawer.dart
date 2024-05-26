
import 'package:flutter/material.dart';
import '../Responsiveness/responsive_layout.dart';
import '../Screens/desktopScalffold/aboutUs.dart';
import '../Screens/desktopScalffold/blog_events.dart';
import '../Screens/desktopScalffold/gallery.dart';
import '../Screens/desktopScalffold/home.dart';
import '../Screens/mobile_tabletScalffold/aboutUs.dart';
import '../Screens/mobile_tabletScalffold/blog_events.dart';
import '../Screens/mobile_tabletScalffold/gallery.dart';
import '../Screens/mobile_tabletScalffold/home.dart';
import '../responsiveness/responsive_about.dart';
import '../responsiveness/responsive_gallery.dart';
import '../responsiveness/responsive_projects.dart';

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
                    color: Colors.pink[300],
                    child: ListTile(
                      title: const Text('Home'),
                      //leading: const Icon(Icons.home),
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute
                          (builder: (context)=> const ResponsiveLayout(mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold(),)
                        )
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('About us'),
                   // leading: const Icon(Icons.info),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute
                        (builder: (context)=>  ResponsiveAbout(mobileAbout: MobileAboutUs(), desktopAbout: DesktopAbout()))
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('Gallery'),
                    //leading: const Icon(Icons.image),
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute
                        (builder: (context)=>  ResponsiveGallery(mobileGallery: MobileGallery(), desktopGallery: GalleryPage()))
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: const Text('Thematic Programs Areas'),
                   // leading:  const Icon(Icons.nature_people,),
                    children:[
                      ListTile(
                        onTap: () {},
                        title: const Text('Agriculture and sustainable livelihoods'),
                      ),
                      ListTile(
                        onTap: () {},
                        title: const Text('Community-Based Health'),
                      ),
                      ListTile(
                        onTap: () {},
                        title: const Text('Gender Equity and Social Inclusion (GESI)'),
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
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: const Text('Operation Area'),
                    //leading:  const Icon(Icons.construction,),
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
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: const Text('Current Programs'),
                    //leading:  const Icon(Icons.wc,),
                    children:[
                      ListTile(
                        onTap: () {},
                        title: const Text('Integrated Early Childhood Development'),
                      ),

                      ListTile(
                        onTap: () {},
                        title: const Text('Northern Ghana Climate Resilience'),
                      ),

                      ListTile(
                        onTap: () {},
                        title: const Text('Community-Based Malaria Control Project'),
                      )

                      ,ListTile(
                        onTap: () {},
                        title: const Text('Health Prevention and Outreach Project(HOPE)'),
                      ),

                      ListTile(
                        onTap: () {},
                        title: const Text('Disaster and relief'),
                      ),

                      ListTile(
                        onTap: () {},
                        title: const Text('ADDRO-SNV Soybean Partnership'),
                      ),

                      ListTile(
                        onTap: () {},
                        title: const Text('Savings with Education'),
                      ),
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('Blog'),
                    //leading: const Icon(Icons.post_add),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResponsiveBlogEvents(mobileBlog: MobileBlogEvents(), desktopBlog: DesktopBlogEvents())));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
