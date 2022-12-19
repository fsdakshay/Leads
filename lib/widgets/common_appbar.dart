import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBars({super.key})
      : super(
    iconTheme: const IconThemeData(
      color: Colors.black, //change your color here
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Image.asset(
      "assets/lead_infinity_logo.jpeg",
      fit: BoxFit.cover,
    ),
    leadingWidth: 55,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: CircleAvatar(
        backgroundColor: Colors.black26,
        child: IconButton(
          icon: const Icon(Icons.person, color: Colors.white, size: 20),
          onPressed: () {

          },
        ),
      ),
    ),
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.black87,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
