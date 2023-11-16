import 'package:flutter/material.dart';
import 'package:xen_popup_card/xen_popup_card.dart';



class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  // APP BAR
  //
  // [XenCardAppBar]
  XenCardAppBar appBar = const XenCardAppBar(
    child: Text(
      "app bar",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
    ),
    // To remove shadow from appbar
    shadow: BoxShadow(color: Colors.transparent),
  );

  // GUTTER
  //
  // [XenCardGutter]
  XenCardGutter gutter =  XenCardGutter(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text("data")),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            cardWithGutterAndAppBar(),

          ],
        ),
      ),
    );
  }

  // card with both gutter and app bar
  Widget cardWithGutterAndAppBar() => TextButton(
    onPressed: () {
       showDialog(
        context: context,
        builder: (builder) => XenPopupCard(
          appBar: appBar,
          gutter: gutter,
          body: ListView(
            children:  [
              Text("body"),
            ],
          ),
        ),
      );
    },
    child: const Text("open card with gutter and app bar"),
  );
}