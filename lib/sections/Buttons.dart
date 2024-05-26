
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color overlayColor;
  final Color textColor;
  const Buttons({super.key, required this.buttonText, required this.onPressed, required this.backgroundColor, required this.overlayColor, required this.textColor,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(backgroundColor),
            overlayColor:  MaterialStatePropertyAll(overlayColor),
            //side: const MaterialStatePropertyAll(BorderSide(color: Colors.black)),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (Set<MaterialState> states) {
                return const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                );
              },
            ),
          ),
          onPressed: onPressed,
          child:  Text(buttonText, style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, color: textColor),)
      ),
    );
  }
}

class TextButtons extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  final Color backgroundColor;
  final Color overlayColor;
  final Color textColor;
  const TextButtons( {super.key, required this.buttonText, required this.onPressed, required this.backgroundColor, required this.overlayColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style:  ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          overlayColor:  MaterialStatePropertyAll(overlayColor),
          //side: const MaterialStatePropertyAll(BorderSide(color: Colors.black)),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                (Set<MaterialState> states) {
              return const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))
              );
            },
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonText, style: TextStyle(color: textColor,  fontSize: 14, letterSpacing: 2))
    );
  }
}




