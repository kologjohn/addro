import 'package:xen_popup_card/xen_popup_card.dart';
import 'package:flutter/material.dart';

Future popmodal(BuildContext context,String title,String body,String footer) async {
  XenCardAppBar appBar =XenCardAppBar(
    color: Colors.black12,
    shadow: const BoxShadow(color: Colors.transparent),
    child: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
    ),
  );

  // GUTTER
  //
  // [XenCardGutter]
  XenCardGutter gutter = XenCardGutter(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text(footer)),
    ),
  );


  return showDialog(
    barrierColor: Colors.white30,
      context: context,
      builder: (builder) => XenPopupCard(
        cardBgColor: Colors.white,
        appBar: appBar,
        gutter: gutter,
        body: ListView(
          children:  [
            Text(body,style: const TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
}