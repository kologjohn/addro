import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarData extends StatelessWidget {
  const AppBarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.teal[900],
          height: 50,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.call, color: CupertinoColors.white, size: 16,),
                  ),

                  const Text('0203214314/0382022986', style: TextStyle(color: CupertinoColors.white),),

                  const Padding(padding: EdgeInsets.all(8.0), child: VerticalDivider(width: 2, indent: 5,endIndent: 5, color: CupertinoColors.white,),),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.mail, color: CupertinoColors.white, size: 16,),
                  ),

                  const Text('info@addro.org', style: TextStyle(color: CupertinoColors.white),),

                  const Padding(padding: EdgeInsets.all(8.0), child: VerticalDivider(width: 2, indent: 5,endIndent: 5, color: CupertinoColors.white,),),

                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook, size: 16,color: CupertinoColors.activeBlue,)),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter, size: 16,color: CupertinoColors.activeBlue,)),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.linkedin, size: 16,color: CupertinoColors.activeBlue,)),

                ],
              ),
              Row(
                children: <Widget>[
                  TextButton(onPressed: (){},
                      child: const Text('Projects', style: TextStyle(color: CupertinoColors.white))),
                  TextButton(onPressed: (){}, child: const Text('Gallery', style: TextStyle(color: CupertinoColors.white))),
                  TextButton(onPressed: (){}, child: const Text('Contact us', style: TextStyle(color: CupertinoColors.white))),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
