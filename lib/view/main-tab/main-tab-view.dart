import 'dart:math';

import 'package:dem/common-widgets/app-bar-common-view.dart';
import 'package:dem/common-widgets/bar-view-data.dart';
import 'package:dem/common-widgets/tab-button.dart';
import 'package:dem/common/color-extension.dart';
import 'package:dem/services/scroll-box-widget.dart';
import 'package:dem/services/shared-custom-box.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedIndex = 0;

  var barData = [
    {"Name": "Sun", "income": 10, "expense": 10},
    {"Name": "Mon", "income": 20, "expense": 30},
    {"Name": "Tues", "income": 30, "expense": 40},
    {"Name": "Wens", "income": 40, "expense": 20},
    {"Name": "Thurse", "income": 50, "expense": 10},
    {"Name": "Fri", "income": 60, "expense": 15},
    {"Name": "Sater", "income": 70, "expense": 60},
  ];

  int ontap = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    var barwidth = media.width / barData.length;

    var naxval = barData
        .map(
          (e) =>
              (double.tryParse(e["inclome"].toString()) ?? 0.0) +
              (double.tryParse(e["inclome"].toString()) ?? 0.0),
        )
        .reduce(max);
    return Scaffold(
      appBar: AppBarCommonView(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  CusteomWidget(
                    text: "TuesDay",
                    Isselected: selectedIndex == 0,
                    onpresed: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                  ),
                  CusteomWidget(
                    text: "TuesDay",
                    Isselected: selectedIndex == 1,
                    onpresed: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                  ),

                  CusteomWidget(
                    text: "TuesDay",
                    Isselected: selectedIndex == 2,
                    onpresed: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                  ),
                  CusteomWidget(
                    text: "TuesDay",
                    Isselected: selectedIndex == 3,

                    onpresed: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 25),

              //bar graf
              // Container(height: 180, child: Row(children: [
              //   barData.map((cOBj)=>BarView()).toList();

              //     ],
              //   )),
              Container(
                height: 180,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                      barData
                          .map(
                            (cOBj) => BarView(
                              obj: cOBj,
                              barWidth: barwidth,
                              maxVal: naxval,
                            ),
                          )
                          .toList(),
                ),
              ),

              Container(
                width: double.infinity,
                height: 50,
                color: const Color.fromARGB(255, 129, 106, 205),
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    width: 180,
                    height: 80,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 204, 156, 230),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("income"),
                              Icon(Icons.arrow_drop_up),
                            ],
                          ),
                          SizedBox(height: 20),

                          Text("+965874.00"),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 180,
                    height: 80,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 169, 194, 237),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("income"),
                              Icon(Icons.arrow_drop_up),
                            ],
                          ),
                          SizedBox(height: 20),

                          Text("+965874.00"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),

              Text("Transctions"),
              SizedBox(height: 25),

              // ScrollWidget(),
              // ScrollWidget(),
              // ScrollWidget(),
              // ScrollWidget(),
              Column(
                children:
                    [{}, {}, {}, {}, {}].map((cObj) => ScrollWidget()).toList(),
              ),

              Text("hoooooooooooooo"),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffECE9FF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // color: const Color.fromARGB(255, 169, 194, 237),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Tcolor.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 60,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                TabButton(
                  icon: Icons.home_outlined,
                  isSelected: ontap == 0,

                  obTap: () {
                    setState(() {
                      ontap = 0;
                    });
                  },
                ),
                TabButton(
                  icon: Icons.manage_search,

                  isSelected: ontap == 1,

                  obTap: () {
                    setState(() {
                      ontap = 1;
                    });
                  },
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Tcolor.secondry,
                    borderRadius: BorderRadius.circular(25),
                  ),

                  child: Icon(Icons.add, color: Colors.white, size: 45),
                ),
                TabButton(
                  icon: Icons.pie_chart_outline,
                  isSelected: ontap == 2,
                  obTap: () {
                    setState(() {
                      ontap = 2;
                    });
                  },
                ),

                TabButton(
                  icon: Icons.person_outline,
                  isSelected: ontap == 2,
                  obTap: () {
                    setState(() {
                      ontap = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
