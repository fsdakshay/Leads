import 'package:flutter/material.dart';
import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/BottomNavBarWidgets.dart';

import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/ListOfCardsWidget.dart';
import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/ListOfLeadsCard.dart';
import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/ListOfSiteCardWidget.dart';
import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/SearchFieldWidget.dart';
import 'package:flutter_leadinfinity/features/home/screens/tabs/home_tab/widgets/TextWidget.dart';
import 'package:flutter_leadinfinity/widgets/common_appbar.dart';

import '../../../../../widgets/common_FloatingActionButtonWidget.dart';
import '../calender_tab/calender_tab_screen.dart';
import '../call_tab/call_screen.dart';
import '../menu_tab/menu_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex=0;

  final screens = [
     HomePageClass(),
    CalendarApp(),
     Contact(),
    MenuItems()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        appBar: AppBars(),
        body: screens[currentIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
        floatingActionButton: const floating_action_button());
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF5932BE),
        unselectedItemColor: const Color(0xFFB0A8BA),
        iconSize: 30,

        showSelectedLabels: false,
        currentIndex: currentIndex,
        // selectedLabelStyle: const TextStyle(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'calender',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_in_talk),
              label: 'phone',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp),
              label: 'menu',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            //currentIndex for toggle between bottom navigation bar
            currentIndex = index;
          });
        },
      );
  }
}

class HomePageClass extends StatelessWidget {
  const HomePageClass({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFF1EDF2),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child:Column(
            children: [
              const SearchField(),
              TextWidget(),

              const ListOfCards(),
              TextRow(title: "Leads"),

              const ListOfLeadsCards(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextRow(title: "Site Visits"),
              ),

              const ListOfLeadsCards(),



            ],
          ),
        ),
      ),
    );
  }
}


// Text field class
class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                "Hi,  Rakesh!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  "Have a look at your Today's upcoming activities,",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class for Dot Line
class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 150,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.dashColor = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}




