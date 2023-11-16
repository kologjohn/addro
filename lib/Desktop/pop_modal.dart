import 'package:ecommerce/Desktop/Column-three.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xen_popup_card/xen_popup_card.dart';
import 'package:flutter/material.dart';


Future desktopPopmodal(BuildContext context,String title,String body,String footer) async {
  XenCardAppBar appBar =XenCardAppBar(
    padding: const EdgeInsets.all(8),
    color: Colors.amber,
    shadow: const BoxShadow(color: Colors.transparent),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
    ),
  );

  XenCardGutter gutter = XenCardGutter(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: (){},
          child: Text(footer)

      ),
    ),
  );


  return showDialog(
   // barrierColor: Colors.black.withOpacity(5),
      context: context,
      builder: (builder) => XenPopupCard(
        cardBgColor: Colors.white,
        appBar: appBar,
        //gutter: gutter,
        body: ListView(
          shrinkWrap: true,
          children:  [
            Text(body,style: GoogleFonts.halant(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );


}
Future vmPopmodal(BuildContext context,String title,String body,String footer) async {
  XenCardAppBar appBar =XenCardAppBar(
    padding: const EdgeInsets.all(8),
    color: Colors.amber,
    shadow: const BoxShadow(color: Colors.transparent),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
    ),
  );

  XenCardGutter gutter = XenCardGutter(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: (){
        Navigator.pop(context);
      },
          child: Text(footer)

      ),
    ),
  );


  return showDialog(
  //  barrierColor: Colors.white30,
      context: context,
      builder: (builder) => XenPopupCard(
        cardBgColor: Colors.white,
        appBar: appBar,
        //gutter: gutter,
        body: ListView(
          shrinkWrap: true,
          children:  [
            Text(body,style: GoogleFonts.halant(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Col3().myColumn()
          ],
        ),
      ),
    );
}