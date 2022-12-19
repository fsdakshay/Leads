import 'package:flutter/material.dart';


class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(18.0),
      //r=20
      //c FF699C 35 25w
      //t 14 55433C
      color: const Color(0xFFF1EDF2),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.flag_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Leads",style: TextStyle(
                              color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.location_city_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Site Visits",style: TextStyle(
                                color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.home_work_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Flat Reservation",style: TextStyle(
                                color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.inventory_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Inventory",style: TextStyle(
                                color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.spatial_tracking_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Sales Tracker",style: TextStyle(
                                color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.restore_page_outlined,color: Color(0xFFFF699C),size: 35,),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Blockings",style: TextStyle(
                                color: Color(0xFF55433C),fontSize: 16,fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

