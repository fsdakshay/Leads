// import 'package:flutter/material.dart';
//
// // Bottom Navigation bar class
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key, required this}) : super(key: key);
//
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }
//
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.white,
//       selectedItemColor: const Color(0xFF5932BE),
//       unselectedItemColor: const Color(0xFFB0A8BA),
//       iconSize: 30,
//
//       showSelectedLabels: false,
//       currentIndex: _currentIndex,
//       // selectedLabelStyle: const TextStyle(),
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//           backgroundColor: Colors.white,
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'calender',
//             backgroundColor: Colors.white),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.phone_in_talk),
//             label: 'phone',
//             backgroundColor: Colors.white),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.grid_view_sharp),
//             label: 'menu',
//             backgroundColor: Colors.white),
//       ],
//       onTap: (index) {
//         setState(() {
//           //currentIndex for toggle between bottom navigation bar
//           _currentIndex = index;
//         });
//       },
//     );
//   }
// }
