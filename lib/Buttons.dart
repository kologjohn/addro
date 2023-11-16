import 'package:ecommerce/responsive/desktop_scaffold.dart';
import 'package:ecommerce/responsive/mobile_scaffold.dart';
import 'package:ecommerce/responsive/responsive_layout.dart';
import 'package:ecommerce/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons{
  String? btntxt;

  Buttons(this.btntxt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
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
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}

class Button2{
  String? btn2txt;

  Button2(this.btn2txt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
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
          child:  Text('$btn2txt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}



class DonateBtn{
  String? btntxt;

  DonateBtn(this.btntxt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
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
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}

class BookNow{
  String? btntxt;

  BookNow(this.btntxt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
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
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}

class GetInvolveBtn{
  String? btntxt;

  GetInvolveBtn(this.btntxt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (Set<MaterialState> states) {
                return const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                );
              },
            ),
          ),
          onPressed: (){},
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}

class ViewEvents {
  String? btntxt;

  ViewEvents(this.btntxt);
  Widget elvatedBtn(){
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber[700]),
            overlayColor:  MaterialStatePropertyAll(Colors.yellow.shade900),
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
          child:  Text('$btntxt', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)
      ),
    );
  }
}


class TextBtn{
  String? txtbtn;


  TextBtn(this.txtbtn);

  Widget TxtBtn(){
    return TextButton(
        onPressed: (){
          Navigator.push(BuildContext as BuildContext, MaterialPageRoute(builder: (context)=>  const ResponsiveLayout(mobilescaffold: MobileScaffold(),tabletscaffold: TabletScaffold(),desktopscaffold: DesktopScaffold(),)),
          );
        },
        child: Text('$txtbtn', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 20))
    );
  }

  Textbtn(IconData icon, String text){
    return TextButton.icon(
      onPressed: (){}, icon: Icon(icon, color: Colors.amber),
      label: Text(text, style: GoogleFonts.ptSans( color: Colors.black, fontSize: 20)),
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

