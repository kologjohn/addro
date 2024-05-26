import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_animated_buttons/configs/pkg_sizes.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

class MobileCol4 {
  mobileContactForm() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             decoration:  BoxDecoration(
               color: Colors.yellow[50],
               borderRadius: const BorderRadius.all(Radius.circular(20))
             ),
             width: 500,
             height: 500,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children:[
                      MobileConForm().contactForm('Enter your Name*', TextInputType.text),
                      const SizedBox(height: 10),
                      MobileConForm().contactForm('Enter your Email*', TextInputType.text)
                    ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                       children: [
                         MobileConForm().myMsgBox(
                             'Enter Your Message here \n \n \n \n \n',
                             TextInputType.multiline,
                             TextInputAction.newline)
                       ]
                   ),
                 ),
               ],
             ),
           ),
         ),

        Column(
          children: <Widget>[
            //const SizedBox(height: 50,),
            MobileCol4().col1(
                'For More Enquiries, Contact Us More Updates And Information',
                'We would like to hear from you. Please send us a message by'
                    ' filling out the form below and we will get back with you shortly.'),
            MobileCol4().iconBtn(Icons.arrow_right, 'PLAY A SHORT VIDEO')
          ],
        ),
      ],
    );
  }

  col1 (String txt2, String txt3, ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(txt2, style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              Text(txt3, style: GoogleFonts.mPlus1(fontSize: 18, color: Colors.white)),
            ],
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

class MobileConForm{

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
  myMsgBox(String hintText, TextInputType keyboardType, TextInputAction textInputAction){
    return Container(
      color: Colors.white,
      width: 200,
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