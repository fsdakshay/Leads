import 'package:flutter/material.dart';

import '../home_tab_screen.dart';


class ListOfSiteVisits extends StatelessWidget {
  const ListOfSiteVisits({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: SizedBox(
          child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: SizedBox(
                    height: 120,
                    width: 150,
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 15,right: 15),
                          child: Column(
                            children:  [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),

                                        color: Colors.purple
                                    ),
                                    child: Icon(Icons.flag_outlined),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Manoj Chawala",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 90.0),
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                  ),
                                                  // color: Colors.white,
                                                  child: const Padding(
                                                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                                    child: Text(
                                                      "Warm", // split some short text here
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              )

                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: const [

                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Bhoomi Acres",
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),

                                            Padding(
                                                padding: EdgeInsets.all(3.0),
                                                child:Icon(Icons.diamond)
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "2 BHK",
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),

                              const DotWidget(
                                  dashColor: Colors.black54,
                                  dashHeight: 0.9,
                                  dashWidth: 2,
                                  totalWidth: 316
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Text("Registration done, 18/09/2022"),

                                    Wrap(
                                      spacing: 12,
                                      children: const [
                                        Icon(Icons.calendar_today_outlined),
                                        Icon(Icons.call),
                                        Icon(Icons.more_vert)
                                      ],
                                    )
                                  ],
                                ),
                              )



                            ],
                          ),
                        )
                      // Container(
                      //   height: 10,
                      //   width: 10,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(40),
                      //       color: Colors.purple),
                      //   child: const Icon(Icons.alarm),
                      // ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
