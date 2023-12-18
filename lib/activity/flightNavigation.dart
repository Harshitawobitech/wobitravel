import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/calender.dart';
import 'package:untitled/activity/flights.dart';
import 'package:untitled/activity/hotels.dart';
import 'package:untitled/colors/primarycolors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

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
                    color: primarycolors.blue,
                  ),

                  tabs: const [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.flight),
                          Text("Flight")
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.flight),
                          Text("Flight")
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.flight),
                          Text("Flight")
                        ],
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
                      Icon(Icons.flight)
                      //CalendarAppBar(lastDate: lastDate, onDateChanged: onDateChanged)
                    ]),
              )
            ],
          ),
        ),
      )
    ));
  }
}

/*return SafeArea(
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
                    color: primarycolors.blue,
                  ),

                  tabs: const [
                    Tab(
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flight),
                            Text("Flight")
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flight),
                            Text("Flight")
                          ],
                        ),
                      ),
                    ),
                    Tab(
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flight),
                            Text("Flight")
                          ],
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
                      Icon(Icons.flight)
                      //CalendarAppBar(lastDate: lastDate, onDateChanged: onDateChanged)
                    ]),
              )
            ],
          ),
        ),
      )
    ));*/
