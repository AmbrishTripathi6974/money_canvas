import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';

class SegmentButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;
  const SegmentButton(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: isActive
            ? BoxDecoration(
                border:
                    Border.all(color: AppColor.borderColor.withOpacity(0.15)),
                color: AppColor.grey60.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              )
            : null,
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: isActive ? Colors.white : AppColor.grey60.withOpacity(0.8),
              fontSize: 12,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}
