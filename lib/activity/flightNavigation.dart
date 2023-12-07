import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/flights.dart';
import 'package:untitled/activity/hotels.dart';

class flightNavigation extends StatefulWidget {
  flightNavigation({super.key});

  @override
  State<flightNavigation> createState() => _flightNavigationState();
}

class _flightNavigationState extends State<flightNavigation>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TabBar(
                  labelColor: Colors.white,
                  controller: _tabController,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff32a2fe),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                            Border.all(color:Color(0xff32a2fe), width: 1)),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.flight),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Flight", style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                            Border.all(color: Color(0xff32a2fe), width: 1)),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Hotel", style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                            Border.all(color: Color(0xff32a2fe), width: 1)),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.flight),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Flight & Hotel", style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )
                        ),
                      ),
                    ),
                  ]),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(controller: _tabController,
                    children: [
                      flights(),
                      hotels(),
                      Icon(Icons.flight),
                    ]),
              )
            ],
          ),
        ),
      )
    ));
  }
}
