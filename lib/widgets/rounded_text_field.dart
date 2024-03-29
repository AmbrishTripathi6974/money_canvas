import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundTextField extends StatelessWidget {
  final String title;
  final Color color;
  final TextAlign titleAlign;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  const RoundTextField(
      {super.key, required this.title,required this.color,this.titleAlign = TextAlign.left, this.controller, this.keyboardType, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: titleAlign,
                style: GoogleFonts.cambay(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: color.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            keyboardType: keyboardType,
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
