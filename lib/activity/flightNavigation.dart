import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/flights.dart';
import 'package:untitled/colors/primarycolors.dart';

class flightNavigation extends StatefulWidget {
  flightNavigation({super.key});

  @override
  State<flightNavigation> createState() => _flightNavigationState();
}

class _flightNavigationState extends State<flightNavigation>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = [
    Tab(text: 'Flights'),
    Tab(text: 'Hotels'),
    Tab(text: 'Flight & Hotel'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
       // fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: 200,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primarycolors.darkblue,
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fill
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white), ),
                    //Icon(Icons.menu, color: Colors.white,),
                    Row(
                      children: [
                        Icon(Icons.question_mark_outlined, color: Colors.white,),
                        Icon(Icons.person, color: Colors.white,),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                  controller: _tabController,
                  tabs: _tabs,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(controller: _tabController,
                      children: [

                        flights(),
                      //  hotels(),
                        //Icon(Icons.flight),
                        Icon(Icons.flight),
                        Icon(Icons.flight),
                        //CalendarAppBar(lastDate: lastDate, onDateChanged: onDateChanged)
                      ]),
                )
              ],
            ),
          )
        ],
      )

      /*Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
            TabBar(
              controller: _tabController,
              tabs: _tabs,
              labelColor: _selectedColor,
              indicatorColor: _selectedColor,
              unselectedLabelColor: _unselectedColor,
              indicatorSize: TabBarIndicatorSize.label,
            ),
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
      )*/
    ));
  }
}

