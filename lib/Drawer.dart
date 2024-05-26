import 'package:flutter/material.dart';

import 'Mobile/About_Us.dart';


class mobileDrawer extends StatelessWidget {
  const mobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.black45,
      height: 500,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          backgroundColor: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('Home'),
                      leading: const Icon(Icons.home),
                      onTap: (){},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('About'),
                      leading: const Icon(Icons.info),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MobileHistory(),
                            )
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('What we do'),
                      leading: const Icon(Icons.build),
                      onTap: (){},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('Operations area'),
                      leading: const Icon(Icons.wc),
                      onTap: (){},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('Partners'),
                      leading: const Icon(Icons.diversity_3),
                      onTap: (){},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      title: const Text('Advertisement'),
                      leading: const Icon(Icons.featured_video),
                      onTap: (){},
                    ),
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
