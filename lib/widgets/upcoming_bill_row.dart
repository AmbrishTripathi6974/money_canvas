import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/colors.dart';

class UpcomingBillRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;
  const UpcomingBillRow(
      {super.key, required this.sObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          height: 64,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.borderColor.withOpacity(0.15)),
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(sObj["icon"]),
              // Container(
              //   height: 40,
              //   padding: const EdgeInsets.all(4),
              //   decoration: BoxDecoration(
              //     color: AppColor.grey60.withOpacity(0.5),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   alignment: Alignment.center,
              //   child: Column(
              //     children: [
              //       Text(
              //         "Jan",
              //         style: GoogleFonts.inter(
              //           textStyle: TextStyle(
              //               fontSize: 10,
              //               color: AppColor.grey60.withOpacity(0.4),
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Text(
              //         "18",
              //         style: GoogleFonts.inter(
              //           textStyle: TextStyle(
              //               fontSize: 14,
              //               color: AppColor.grey60.withOpacity(0.4),
              //               fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  sObj["name"],
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "- \u20B9${sObj["price"]}",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.red.withOpacity(0.8),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
