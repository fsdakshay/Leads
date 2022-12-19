
import 'package:flutter/material.dart';

import '../home_tab_screen.dart';

class ListOfCards extends StatefulWidget {
  const ListOfCards({
    Key? key,
  }) : super(key: key);

  @override
  State<ListOfCards> createState() => _ListOfCardsState();
}

List gradColor1=[
  0xFFFFCB59,
  0xFFFF699c,
  0xFF9C6BFF
];
List gradColor2=[
  0xFFFF699C,
  0xFF9C6BFF,
  0xFF4E3680
];

class _ListOfCardsState extends State<ListOfCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 192,
              width: 175,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    Container(
                      decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(1, 1),
                            colors: [
                              Color(gradColor1[index % gradColor1.length]),
                              Color(gradColor2[index % gradColor2.length])
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        top: 12,
                      ),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                        child: const Icon(Icons.alarm),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 56.0),
                      child: Row(
                        children: const [
                          //Text with Expanded is for wrap text instead of overflow
                          Expanded(
                              child: Text(
                                "Call with Manoj Chawala",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w900),
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 104.0),
                      child: Text(
                        "Today, at 09:30 am",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 150.0, left: 10),
                      child: DotWidget(
                        dashColor: Colors.white,
                        dashHeight: 0.6,
                        dashWidth: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170.0, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              width: 70,
                              height: 29,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              // color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0,left: 4,),
                                child: Row(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.check_circle,
                                      color: Color(0xFFB90003),
                                      size: 20,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 4.0,top: 2,right: 4.0),
                                      child: Text(
                                        "Done", // split some short text here
                                        style: TextStyle(
                                            color: Color(0xFFB90003),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 70,
                              height: 29,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
            // Color(0xFFFFCB59)
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              // color: Colors.white,
                              child: Row(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0,top: 6),
                                    child: Icon(
                                      Icons.phone,
                                      color: Color(0xFFB90003),
                                      size: 20,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 2.0,top: 7),
                                    child: Text(
                                      "Call", // split some short text here
                                      style: TextStyle(
                                          color: Color(0xFFB90003),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
