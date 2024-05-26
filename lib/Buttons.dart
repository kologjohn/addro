import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons{
  String? btntxt;

  Buttons(this.btntxt);
  Widget elvatedBtn(){
    return Container(
      height: 50,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            //overlayColor: const MaterialStatePropertyAll(Colors.yellow),
            //side: const MaterialStatePropertyAll(BorderSide(color: Colors.black)),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (Set<MaterialState> states) {
                return const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                );
              },
            ),
          ),
          onPressed: (){},
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 20),)
      ),
    );
  }
}

class Button2{
  String? btn2txt;

  Button2(this.btn2txt);
  Widget elvatedBtn(){
    return Container(
      height: 50,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            overlayColor: const MaterialStatePropertyAll(Colors.amber),
            side: const MaterialStatePropertyAll(BorderSide(color: Colors.white, width: 1)),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (Set<MaterialState> states) {
                return const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all( Radius.circular(50)),
                );
              },
            ),
          ),
          onPressed: (){},
          child:  Text('$btn2txt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 20),)
      ),
    );
  }
}

class TextBtn{
  String? txtbtn;


  TextBtn(this.txtbtn);

  Widget TxtBtn(){
    return TextButton(
        onPressed: (){},
        child: Text('$txtbtn', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 20))
    );
  }

  Textbtn(IconData icon, String text){
    return TextButton(
      onPressed: (){},
      child: Column(
        children: [
          Row(
          children: <Widget>[
            Icon(icon, color: Colors.amber,),
            Text(text, style: GoogleFonts.ptSans( color: Colors.black, fontSize: 20),),

          ],
         ),

        ],
      ),
    );
  }
}

class Title1{
  String? txt;
  Title1(this.txt);
  Widget Titletxt(){
    return Text('$txt', style: GoogleFonts.breeSerif(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16));
  }
}

class Cont {
  smlCont (String txt, String txt2, String txt3){
    return Container(
      height: 110, width: 200,
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(txt, style: GoogleFonts.righteous(fontSize: 30, color: Colors.white),),
          Text(txt2, style: GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 20),),
          Text(txt3, style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),),
        ],
      ),
    );
  }
}