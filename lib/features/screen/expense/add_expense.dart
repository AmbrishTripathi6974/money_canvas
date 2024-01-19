import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_canvas/common/colors.dart';
import 'package:money_canvas/common/image_string.dart';
import 'package:money_canvas/widgets/image_button.dart';
import 'package:money_canvas/widgets/primary_btn.dart';
import 'package:money_canvas/widgets/rounded_text_field.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController txtDescription = TextEditingController();
  bool isTransaction = true;
  List transArr = [
    {
      "name": "Shopping",
      "icon": "assets/img/shopping_bag.png",
    },
    {
      "name": "Entertainment",
      "icon": "assets/img/hbo_logo.png",
    },
    {
      "name": "Subscription",
      "icon": "assets/img/recurring_bill.png",
    },
    {
      "name": "Travel",
      "icon": "assets/img/car.png",
    },
    {
      "name": "food",
      "icon": "assets/img/restaurant.png",
    },
    {
      "name": "Spotify",
      "icon": "assets/img/spotify_logo.png",
    },
    {
      "name": "Youtube Premium",
      "icon": "assets/img/youtube_logo.png",
    },
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/img/onedrive_logo.png",
    },
    {
      "name": "Netflix",
      "icon": "assets/img/netflix_logo.png",
    },
  ];

  double amountVal = 0.00;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.grey60.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: SafeArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              tBack,
                              width: 25,
                              height: 25,
                              color: AppColor.grey40.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "New",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Add New\n Expenses",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: media.width,
                    height: media.width * 0.6,
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                            autoPlay: false,
                            aspectRatio: 1,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            viewportFraction: 0.65,
                            enlargeFactor: 0.4,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                        itemCount: transArr.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          var sObj = transArr[itemIndex] as Map? ?? {};
                          return Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  sObj["icon"],
                                  width: media.width * 0.4,
                                  height: media.width * 0.4,
                                  fit: BoxFit.fitHeight,
                                ),
                                const Spacer(),
                                Text(
                                  sObj["name"],
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: RoundTextField(title: "Description",controller: txtDescription,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageButton(
                      image: tMinus,
                      onPressed: () {
                        amountVal -= 10;

                        if (amountVal < 0) {
                          amountVal = 0;
                        }

                        setState(() {});
                      }),
                  Column(
                    children: [
                      Text(
                        "Monthly Price",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "\u20B9${amountVal.toStringAsFixed(2)}",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 150,
                        height: 1,
                        color: AppColor.grey60,
                      ),
                    ],
                  ),
                  ImageButton(
                      image: tPlus,
                      onPressed: () {
                        amountVal += 10;
                        setState(() {});
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                  title: "Add Expense",
                  color: AppColor.secondary,
                  onPressed: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
