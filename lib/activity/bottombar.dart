import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:untitled/activity/flightNavigation.dart';
import 'package:untitled/colors/primarycolors.dart';

class MotionTabBarDemo extends StatelessWidget {
  const MotionTabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyMotionTabBarDemo(),
    );
  }
}

class MyMotionTabBarDemo extends StatefulWidget {
  const MyMotionTabBarDemo({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyMotionTabBarDemo createState() => _MyMotionTabBarDemo();
}

class _MyMotionTabBarDemo extends State<MyMotionTabBarDemo>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        /*appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: primarycolors.blue,
            elevation: 50.0,
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ]),*/
        drawer: Drawer(
          child:
          Container(
            color: Colors.white,
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                ListTile(
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Overview'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text('Pricing'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ExpansionTile(
                  title: Text("Privacy Policy"),
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  childrenPadding: EdgeInsets.only(left: 60),
                  leading: Icon(Icons.privacy_tip),
                  children: [
                    ListTile(
                      title: Text("Policy 1"),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("Policy 2"),
                      onTap: () {},
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'Overview',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.insert_comment_sharp),
                  title: const Text('Comments'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.speaker_notes),
                  title: const Text('Released'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_month),
                  title: const Text('Scheduled'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.hotel),
                  title: const Text('Hotel'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MotionTabBar(
          controller: _motionTabBarController,
          initialSelectedTab: "Home",
          useSafeArea: true,
          labels: const ["Home", "Ticket", "Notification", "Profile"],
          icons: const [
            Icons.home_outlined,
            Icons.airplane_ticket_outlined,
            Icons.notifications_none_outlined,
            Icons.person_2_outlined
          ],
          textStyle: TextStyle(
            fontSize: 14,
            color: primarycolors.darkblue,
            fontWeight: FontWeight.bold,
          ),
          tabIconColor: Color(0xFFAFAFAF),
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.white,
          tabIconSelectedColor: primarycolors.darkblue,
          tabBarColor: Colors.white,
          onTabItemSelected: (int value) {
            setState(() {
              _motionTabBarController!.index = value;
            });
          },
        ),
        body: TabBarView(
          physics:
              const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          controller: _motionTabBarController,
          children: <Widget>[
            flightNavigation(),
            Text("Ticket"),
            Text("notification"),
            Text("Profile")
          ],
        ),

        //Drawer
      ),
    );
  }
}
