import 'package:ecommerce/Buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Desktop/Column-three.dart';

class TabletBlog extends StatelessWidget {
  const TabletBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 100),
        Col3().rw2('INSIGHTS AND UPDATE', 'Our Recent Blog And News', ''),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TabletBlog().cards(
                Icons.folder_copy_outlined,
                'Donate',
                'Integrated Community - Based Health Program',
                'ADDRO’s health program was focused mainly on carrying out malaria intervention activities…',
                'assets/33-1.jpg'),

            const SizedBox(height: 20),

            const TabletBlog().cards(
                Icons.folder_copy_outlined,
                'Donate',
                'Community Development Projects',
                'Originally, ADDRO was involved in general community development projects in four of…',
                'assets/m8-1.jpg'),

            const SizedBox(height: 20),

            const Column(
               children: [
                GetInvolve()
              ],
            ),
          ],
        ),
      ],
    );
  }
  cards (IconData iconData, String btnTxt, String boldTxt, String txt, String img){
    return Column(
      children: [
        SizedBox(
          width: 500,
          child:  Card(
            child: Column(
              children:[
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 110,
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
                          child: Row(
                            children: [
                              Icon(iconData, color: Colors.white),
                              Text(btnTxt, style: GoogleFonts.roboto(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (){},
                      child: Text(
                        boldTxt,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber[800]),
                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(txt, style: GoogleFonts.roboto(fontSize: 16,)),
                ),

                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      //borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        filterQuality: FilterQuality.high,
                          fit: BoxFit.fitWidth,
                          image: AssetImage(img)
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GetInvolve extends StatelessWidget {
  const GetInvolve({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        const GetInvolve().getInvolved(
            'GET INVOLVE',
            'We Believe That God’s Love, And Peace Can Only Be Found In A Community Based Upon Right Relations.'
        )
      ],
    );
  }
  getInvolved (String txt, String txt2){
    return  Column(
      children: [
        Column(
          children: [
            Container(
              decoration:  const BoxDecoration(
                color: CupertinoColors.black,
                  image: DecorationImage(
                    opacity: 0.5,
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/33-1.jpg')
                  )
              ),
              child:  Column(
                children: [
                  const SizedBox(height: 50),
                  Text(txt, style: GoogleFonts.roboto( color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 26)),
                  const SizedBox(height: 50),
                  Text(
                      txt2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)
                  ),

                  const SizedBox(height: 50),

                  Buttons('Get Involve Now').elvatedBtn(),
                  const SizedBox(height: 50,)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
