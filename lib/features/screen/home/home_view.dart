import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_canvas/common/colors.dart';
import 'package:money_canvas/common/image_string.dart';
import 'package:money_canvas/widgets/custom_arc_painter.dart';
import 'package:money_canvas/widgets/status_button.dart';
import 'package:money_canvas/widgets/transaction_home_row.dart';
import 'package:money_canvas/widgets/upcoming_bill_row.dart';
import '../../../widgets/segment_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isTransaction = true;
  List transArr = [
    {
      "name": "Shopping",
      "date": DateTime(2024, 16, 2023),
      "icon": "assets/img/shopping_bag.png",
      "price": "120"
    },
    {
      "name": "Subscription",
      "date": DateTime(2024, 16, 2023),
      "icon": "assets/img/recurring_bill.png",
      "price": "499"
    },
    {
      "name": "Travel",
      "date": DateTime(2024, 16, 2023),
      "icon": "assets/img/car.png",
      "price": "1000"
    },
    {
      "name": "food",
      "date": DateTime(2024, 16, 2023),
      "icon": "assets/img/restaurant.png",
      "price": "32"
    },
  ];
  List billArr = [
    {
      "name": "Spotify",
      "date": DateTime(2024, 17, 2023),
      "icon": "assets/img/spotify_logo.png",
      "price": "150"
    },
    {
      "name": "Youtube Premium",
      "date": DateTime(2024, 17, 2023),
      "icon": "assets/img/youtube_logo.png",
      "price": "999"
    },
    {
      "name": "Microsoft OneDrive",
      "date": DateTime(2024, 17, 2023),
      "icon": "assets/img/onedrive_logo.png",
      "price": "500"
    },
    {
      "name": "Netflix",
      "date": DateTime(2024, 17, 2023),
      "icon": "assets/img/netflix_logo.png",
      "price": "100"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: media.width * 1.1,
              // padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColor.grey60.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(tHomeBackground),

                  Container(
                    padding: EdgeInsets.only(bottom: media.width*0.05),
                    width: media.width*0.72,
                    height: media.width*0.72,
                    child: CustomPaint(
                      painter: CustomArcPainter(),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        tSplashlogo,
                        width: media.width * 0.15,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: media.width*0.04,
                      ),
                      Text(
                        "Account Balance",
                        style: GoogleFonts.cambay(
                          textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: media.width*0.04,
                      ),
                      Text(
                        "\u20B9${38000}",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 38,
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w700),
                        ),
                      ),

                      SizedBox(
                        height: media.width*0.04,
                      ),

                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.borderColor.withOpacity(0.15)),
                            color: AppColor.grey60.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            "See your budget",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: media.width*0.04,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: StatusButton(
                                  title: "Income",
                                  value: "\u20B9${50000}",
                                  statusColor: AppColor.secondary,
                                  onPressed: () {}),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: StatusButton(
                                  title: "Highest Trans.",
                                  value: "\u20B9${1000}",
                                  statusColor: AppColor.secondaryG,
                                  onPressed: () {}),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: StatusButton(
                                  title: "Expenese",
                                  value: "\u20B9${12000}",
                                  statusColor: AppColor.secondary0,
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SegmentButton(
                      title: "Recent Transactions",
                      isActive: isTransaction,
                      onPressed: () {
                        setState(() {
                          isTransaction = !isTransaction;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SegmentButton(
                      title: "Upcoming Bills",
                      isActive: !isTransaction,
                      onPressed: () {
                        setState(() {
                          isTransaction = !isTransaction;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (isTransaction)
              ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: transArr.length,
                  itemBuilder: (context, index) {
                    var sObj = transArr[index] as Map? ?? {};

                    return TransactionHomeRow(sObj: sObj, onPressed: () {});
                  }),
            if (!isTransaction)
              ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: transArr.length,
                  itemBuilder: (context, index) {
                    var sObj = billArr[index] as Map? ?? {};

                    return UpcomingBillRow(sObj: sObj, onPressed: () {});
                  }),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
