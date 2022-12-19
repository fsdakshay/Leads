import 'package:flutter/material.dart';

import '../home_tab_screen.dart';

class ListOfLeadsCards extends StatelessWidget {
  const ListOfLeadsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),

        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
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

                                color: Color(0xFF9C6DFF)
                            ),
                            child: const Icon(Icons.flag_outlined,color: Colors.white,),
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
                                      const Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Manoj Chawala",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 100.0),
                                        child: Container(
                                          height: 21,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                              color: Color(0xFFFAEBCB),
                                              borderRadius: BorderRadius.all(Radius.circular(20))
                                          ),
                                          // color: Colors.white,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 14,top: 4),
                                            child: Text(
                                              "Warm", // split some short text here
                                              style: TextStyle(
                                                  color: Color(0xFF996900),
                                                  fontSize: 11,
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
                                        child:Icon(Icons.diamond,)
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
                                Icon(Icons.calendar_today_outlined,size: 18,),
                                Icon(Icons.call,size: 18,),
                                Icon(Icons.more_vert,size: 18,)
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
          );
        });
  }
}
