import 'package:flutter/material.dart';
import 'package:money_canvas/common/colors.dart';
import 'package:money_canvas/common/image_string.dart';
import 'package:money_canvas/features/screen/expense/add_expense.dart';
import 'package:money_canvas/features/screen/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      body: Stack(
        children: [
          PageStorage(bucket: pageStorageBucket, child: currentTabView),
          SafeArea(
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(tBottonBarBackground),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 0;
                                    currentTabView = const HomeScreen();
                                  });
                                },
                                icon: Image.asset(
                                  tHomeIcon,
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 0
                                      ? Colors.white
                                      : Colors.grey[500],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 1;
                                    currentTabView = Container();
                                  });
                                },
                                icon: Image.asset(
                                  tMoney,
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 1
                                      ? Colors.white
                                      : Colors.grey[500],
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                                height: 50,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 2;
                                    currentTabView = Container();
                                  });
                                },
                                icon: Image.asset(
                                  tBudgets,
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 2
                                      ? Colors.white
                                      : Colors.grey[500],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 3;
                                    currentTabView = Container();
                                  });
                                },
                                icon: Image.asset(
                                  tCreditCards,
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 3
                                      ? Colors.white
                                      : Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddExpense()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(tCenterButton, width: 55,height: 55,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
