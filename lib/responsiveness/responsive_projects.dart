import 'package:flutter/material.dart';

class ResponsiveBlogEvents extends StatelessWidget {
  final Widget mobileBlog;
  final Widget desktopBlog;
  //final Widget tabletScaffold;
  const ResponsiveBlogEvents({super.key, required this.mobileBlog, required this.desktopBlog,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(builder: (
            context, constraints){
          if(
          constraints.maxWidth < 800
          )
          {
            return mobileBlog;
          }
          else {
            return desktopBlog;
          }
        }),
      ),

    );
  }
}
