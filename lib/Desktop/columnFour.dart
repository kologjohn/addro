import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_animated_buttons/configs/pkg_sizes.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

class Col4 {
  contactForm() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(

          children: <Widget>[
            const SizedBox(height: 50,),
            Col4().col1(
                'CONTACT US',
                'For More Enquiries, Contact Us More Updates And Information',
                'We would like to hear from you. Please send us a message by'
                    ' filling out the form below and we will get back with you shortly.'),
            Col4().iconBtn(Icons.arrow_right, 'PLAY A SHORT VIDEO')
          ],
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             decoration:  BoxDecoration(
               color: Colors.amber[50],
               borderRadius: const BorderRadius.all(Radius.circular(20))
             ),
             width: 600,
             height: 300,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children:[
                      ConForm().contactForm('Enter your Name*', TextInputType.text),
                      const SizedBox(height: 10),
                      ConForm().contactForm('Enter your Email*', TextInputType.text)
                    ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                       children: [
                         ConForm().msgBox(
                             'Enter Your Message here \n \n \n \n \n \n \n \n',
                             TextInputType.multiline,
                             TextInputAction.newline)
                       ]
                   ),
                 ),
               ],
             ),
           ),
         ),
      ],
    );
  }

  col1 (String txt, String txt2, String txt3, ){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 600,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(txt, style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 100,),
                Text(txt2, style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                Text(txt3, style: GoogleFonts.mPlus1(fontSize: 18, color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
  iconBtn(IconData icon, String conTxt){
   return Row(
      children: <Widget>[
       SizedBox(
         height: 80,
         child: PrettyWaveButton(
           waveLength: 10,
           borderRadius: s250,
           backgroundColor: Colors.blueGrey,
             child: Icon (icon, color: Colors.amber, ),
             onPressed: (){}
         ),
       ),
        Text(conTxt, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ],
    );
  }
}

class ConForm{

  contactForm (String hintText, TextInputType keyboardType){
    return Container(
      color: Colors.white,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder()
          ),
        ),
      ),
    );
  }
  msgBox(String hintText, TextInputType keyboardType, TextInputAction textInputAction){
    return Container(
      color: Colors.white,
      width: 300,
      height: 200,
      child: TextFormField(
        maxLines: null,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.newline,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}