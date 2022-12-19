// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:group_button/group_button.dart';
//
// import '../home_tab_screen.dart';
// import 'package:flutter_switch/flutter_switch.dart';
//
// class OnsiteRegistration extends StatefulWidget {
//   const OnsiteRegistration({Key? key}) : super(key: key);
//
//   @override
//   State<OnsiteRegistration> createState() => _OnsiteRegistrationState();
// }
//
// List<bool> isCardEnabled = [];
// final radioButtonController = GroupButtonController();
// bool _switchValue = true;
//
// final TextEditingController dateController = TextEditingController();
//
// class _OnsiteRegistrationState extends State<OnsiteRegistration> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Onsite Registration",
//           style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black
//             // Color(0xFFF1EDF2,)
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new_rounded,
//               color: Colors.black, size: 20),
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const MyHomePage()),
//             );
//           },
//         ),
//         // backgroundColor: ,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           color: const Color(0xFFF1EDF2),
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 20.0,
//               top: 15,
//               right: 20.0,
//             ),
//             child: Form(
//               child: Column(
//                 children: [
//                   BasicInfoContainer(context),
//
//                   const AdditionalInfoContainer(),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 18.0),
//                     child: Container(
//                       padding: const EdgeInsets.all(10.0),
//                       width: MediaQuery.of(context).size.width,
//                       color: Colors.white,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Schedule Site Visit",style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF281657)
//                               )),
//                               FlutterSwitch(
//                                   height: 24,
//                                   width: 50,
//                                   activeColor: const Color(0XFF3EBEA8),
//                                   value: _switchValue,
//                                   onToggle: (value) {
//                                     setState(() {
//                                       _switchValue = value;
//                                     });
//                                   })
//                             ],
//                           ),
//
//                           _switchValue?Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Padding(
//                                 padding: EdgeInsets.only(top: 4.0,bottom: 4.0),
//                                 child:  Divider(thickness: 1.5,),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//                                 child: Text("Expected Date",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//                               ),
//
//
//                               TextFormField(
//                                 controller: dateController,
//                                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                                 focusNode: AlwaysDisabledFocusNode1(),
//                                 onTap: () async {
//                                   var date = await buildShowDatePicker(context);
//                                   // dateController.text = date.toString().substring(0, 10);
//                                 },
//                                 cursorColor: Colors.black,
//                                 decoration: const InputDecoration(
//                                   enabledBorder:OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xFFE6E0E8)
//                                       ,
//                                     ),
//                                   ),
//                                   suffixIcon: Icon(
//                                     Icons.calendar_today_outlined,
//                                     color: Colors.grey,
//                                   ),
//                                   hintText: "Select Date",
//                                   hintStyle: TextStyle(
//                                       color: Color(0xFFB0A8BA)
//                                   ),
//                                   contentPadding: EdgeInsets.symmetric(
//                                       vertical: 14.0, horizontal: 14.0),
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       // color: Color(0xFFF9F6F9),
//                                     ),
//                                   ),
//                                   filled: true,
//                                   fillColor: Color(0xFFF9F6F9),
//                                 ),
//                               ),
//
//
//                               const Padding(
//                                 padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//                                 child: Text("Notes",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//                               ),
//
//                               TextFormField(
//                                 maxLines: 3,
//                                 cursorColor: Colors.black,
//                                 decoration: const InputDecoration(
//                                   enabledBorder:OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xFFE6E0E8)
//                                       ,
//                                     ),
//                                   ),
//                                   hintText: "Enter Notes",
//                                   hintStyle: TextStyle(
//                                       color: Color(0xFFB0A8BA)
//                                   ),
//                                   contentPadding: EdgeInsets.symmetric(
//                                       vertical: 14.0, horizontal: 14.0),
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       // color: Color(0xFFF9F6F9),
//                                     ),
//                                   ),
//                                   filled: true,
//                                   fillColor: Color(0xFFF9F6F9),
//                                 ),
//                               ),
//                             ],
//                           ):const SizedBox()
//
//
//
//
//                         ],
//                       ),
//                     ),
//                   ),
//
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(6.0),
//                         gradient: const LinearGradient(
//                           begin: Alignment(-1, -1),
//                           end: Alignment(1, 1),
//                           colors: [
//                             Color(0xFFFF699C),
//                             Color(0xFF9C6BFF)
//                           ],
//                         ),
//                       ),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
//                           disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
//                           shadowColor: Colors.transparent,),
//
//                         onPressed: (){},
//
//                         child: const Center(
//                           child: Text(
//                             'SUBMIT',
//                             style: TextStyle(
//                               // fontFamily: textFontFamilySegoeUI,
//                               fontSize: 16,
//                               color: Color(0xffffffff),
//                               letterSpacing: -0.3858822937011719,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
//
//
//   Container BasicInfoContainer(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15.0),
//       color: Colors.white,
//       height: 530,
//       width: MediaQuery.of(context).size.width,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(bottom: 4),
//             child: Text("Basic Information",style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF281657)
//             ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 4.0),
//             child: Divider(thickness: 1.5,),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//             child: Text("Full Name",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))
//               ,),
//           ),
//           TextFormField(
//             cursorColor: Colors.black,
//             decoration: const InputDecoration(
//               enabledBorder:OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xFFE6E0E8)
//                   ,
//                 ),
//               ) ,
//               hintText: "Enter Full Name",
//
//               hintStyle: TextStyle(
//                   color: Color(0xFFB0A8BA)
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                   vertical: 14.0, horizontal: 14.0),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                     color: Colors.red
//                   // Color(0xFFB0A8BA),
//                 ),
//               ),
//               filled: true,
//               fillColor: Color(0xFFF9F6F9),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//             child: Text("Mobile Number",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//           ),
//           TextFormField(
//             cursorColor: Colors.black,
//             decoration: const InputDecoration(
//               enabledBorder:OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xFFE6E0E8)
//                   ,
//                 ),
//               ),
//               hintText: "Enter Mobile Number",
//               hintStyle: TextStyle(
//                   color: Color(0xFFB0A8BA)
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                   vertical: 14.0, horizontal: 14.0),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xFFF9F6F9),
//                 ),
//               ),
//               filled: true,
//               fillColor: Color(0xFFF9F6F9),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//             child: Text("Email ID",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//           ),
//           TextFormField(
//             cursorColor: Colors.black,
//             decoration: const InputDecoration(
//               enabledBorder:OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xFFE6E0E8)
//                   ,
//                 ),
//               ),
//               hintText: "Enter Email ID",
//               hintStyle: TextStyle(
//                   color: Color(0xFFB0A8BA)
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                   vertical: 14.0, horizontal: 14.0),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   // color: Color(0xFFF9F6F9),
//                 ),
//               ),
//               filled: true,
//               fillColor: Color(0xFFF9F6F9),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//             child: Text("project",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//           ),
//           DropdownButtonFormField<String>(
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Select  Event Type from Dropdown';
//               }
//               return null;
//             },
//             items: [
//               "Bhoomi Acres",
//               "Second project",
//               "Third Project"
//             ]
//                 .map((label) => DropdownMenuItem(
//               value: label,
//               child: Text(label.toString()),
//             ))
//                 .toList(),
//             decoration: const InputDecoration(
//               enabledBorder:OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xFFE6E0E8)
//                   ,
//                 ),
//               ),
//               hintText: "Enter Email ID",
//               hintStyle: TextStyle(
//                   color: Color(0xFFB0A8BA)
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                   vertical: 14.0, horizontal: 14.0),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   // color: Color(0xFFF9F6F9),
//                 ),
//               ),
//               filled: true,
//               fillColor: Color(0xFFF9F6F9),
//             ),
//             icon: const Icon(Icons.arrow_drop_down_sharp),
//             hint: const Text(
//                 "Select project",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))
//             ),
//             onChanged: (val) {
//               // setState(() {});
//             },
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//             child: Text("Select Type",style: TextStyle(fontSize: 14,color: Color(0xFFB0A8BA))),
//           ),
//           Row(
//             children: [
//               GroupButton(
//                 controller: radioButtonController,
//                 isRadio: true,
//                 buttons: const ["1 BHK", "2 BHK", "3 BHK"],
//
//                 onSelected: (value, index, isSelected) => print(
//                     "index is $index and value is $value , is selected $isSelected"),
//                 options: const GroupButtonOptions(
//
//                     unselectedColor: Color(0xFFF1EDF2),
//                     selectedColor: Color(0xFFF1EDF2),
//                     borderRadius:
//                     BorderRadius.all(Radius.circular(20)),
//                     spacing: 28,
//                     buttonWidth: 90,
//                     unselectedTextStyle:
//                     TextStyle(color: Colors.black54),
//                     selectedTextStyle: TextStyle(
//                       color: Colors.black,
//                     ),
//                     selectedBorderColor: Colors.black,
//                     unselectedBorderColor: Colors.grey,
//                     elevation: 0),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Future<DateTime?> buildShowDatePicker(BuildContext context) {
//     return showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime(2100),
//         builder: (context, picker) {
//           return Theme(
//               data: ThemeData.dark().copyWith(
//                   colorScheme: const ColorScheme.dark(
//                     primary: Colors.deepPurple,
//                     onPrimary: Colors.white,
//                     surface: Colors.pink,
//                     onSurface: Colors.yellow,
//                   )),
//               child: picker!);
//         });
//   }
// }
//
// class AdditionalInfoContainer extends StatefulWidget {
//   const AdditionalInfoContainer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<AdditionalInfoContainer> createState() => _AdditionalInfoContainerState();
// }
//
//
//
// class _AdditionalInfoContainerState extends State<AdditionalInfoContainer> {
//
//
//   void _addTextField() {
//     setState(() {
//       _textFields.add(
//         TextFormField(
//           decoration: InputDecoration(
//             labelText: 'Text Field',
//           ),
//         ),
//       );
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(top: 18.0),
//         child: Container(
//           padding: const EdgeInsets.all(10.0),
//           width: MediaQuery.of(context).size.width,
//           color: Colors.white,
//           child: ExpandablePanel(
//             header: const Padding(
//               padding: EdgeInsets.only(top: 4.0),
//               child: Text("Additional Information",style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF281657)
//               ),),
//             ),
//             collapsed: const SizedBox(),
//             expanded:  Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(top: 4.0,bottom: 4.0),
//                   child: Divider(thickness: 1.5,),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10.0),
//                   child: TextFormField(
//                     cursorColor: Colors.black,
//                     decoration: const InputDecoration(
//                       enabledBorder:OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xFFE6E0E8)
//                           ,
//                         ),
//                       ),
//                       hintText: "Enter Additional Field",
//                       hintStyle: TextStyle(
//                           color: Color(0xFFB0A8BA)
//                       ),
//                       contentPadding: EdgeInsets.symmetric(
//                           vertical: 14.0, horizontal: 14.0),
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           // color: Color(0xFFF9F6F9),
//                         ),
//                       ),
//                       filled: true,
//                       fillColor: Color(0xFFF9F6F9),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius:
//                               BorderRadius.circular(18.0),
//                             ),
//
//                             backgroundColor: const Color(0XFF3EBEA8),
//                             textStyle: const TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500)),
//                         onPressed: () {},
//                         icon: const Icon(Icons.check_circle,
//                             color: Colors.white),
//                         label: const Text(
//                           "Submit",
//                           style: TextStyle(color: Colors.white),
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0),
//                       child: ElevatedButton.icon(
//                           style: ElevatedButton.styleFrom(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                 BorderRadius.circular(18.0),
//                               ),
//                               side: const BorderSide(
//                                 color: Colors.black,
//                               ),
//                               backgroundColor: Colors.black,
//                               textStyle: const TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w500)),
//                           onPressed: () {},
//                           icon: const Icon(Icons.cancel,
//                               color: Colors.white),
//                           label: const Text(
//                             "Cancel",
//                             style: TextStyle(color: Colors.white),
//                           )),
//                     ),
//                   ],
//                 ),
//
//                 Row(
//                   children: [
//                     ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                             side: const BorderSide(
//                               color: Color(0xFF8A60E0),
//
//                             ),
//                             // backgroundColor: Colors.purple,
//                             textStyle: const TextStyle(
//                                 fontSize: 14,
//                                 color: Color(0xFF8A60E0),
//                                 fontWeight: FontWeight.w800)),
//                         onPressed: () {
//                           _addTextField();
//                           // AddCustomFieldWidget();
//                         },
//                         icon: const Icon(Icons.add,
//                             color:Color(0xFF8A60E0)),
//                         label: const Text(
//                           "Custom Field",
//                           style: TextStyle(color: Colors.black),
//                         ))
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
//
//
//
// // for Custom Field Widget
//
// class AddCustomFieldWidget extends StatefulWidget {
//   @override
//   _AddCustomFieldWidgetState createState() => _AddCustomFieldWidgetState();
// }
//
//
// class _AddCustomFieldWidgetState extends State<AddCustomFieldWidget> {
//
//   // create the list to store the values
//   List<String> values = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       // specify the onChanged callback
//       onChanged: (input) {
//
//         print(input);
//         // add the input value to the list
//         values.add(input);
//         // trigger a rebuild of the widget to update the UI
//         setState(() {});
//         // When the user enters a value in the input field,
//         // the onChanged callback will be called,
//         // the input value will be added to the values list,
//         // and the widget will be rebuilt to update the UI with the new value.
//       },
//     );
//   }
// }
//
//
// class AlwaysDisabledFocusNode1 extends FocusNode {
//   @override
//   bool get hasFocus => false;
// }
