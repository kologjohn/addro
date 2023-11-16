import 'package:ecommerce/Desktop/Events.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xen_popup_card/xen_popup_card.dart';
import 'package:flutter/material.dart';


Future popmodal(BuildContext context,String title,String body,String footer) async {
  XenCardAppBar appBar =XenCardAppBar(
   // padding: const EdgeInsets.all(8),
    color: Colors.amber,
    //shadow: const BoxShadow(color: Colors.red),
    child: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
    ),
  );



  return showDialog(
      context: context,
      builder: (builder) => XenPopupCard(
        cardBgColor: Colors.white,
        appBar: appBar,
        //gutter: gutter,
        body: ListView(
          shrinkWrap: true,
          children:  [
            Text(body,style: GoogleFonts.halant(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Event().team()
          ],
        ),
      ),
    );
}