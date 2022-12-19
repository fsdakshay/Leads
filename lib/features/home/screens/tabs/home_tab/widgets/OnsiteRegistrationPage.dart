import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:provider/provider.dart';
import '../../../../providers/provider_for_onSiteReg.dart';
import '../home_tab_screen.dart';
import 'package:flutter_switch/flutter_switch.dart';

List ediddd = [];

class OnsiteRegistration extends StatefulWidget {
  const OnsiteRegistration({Key? key}) : super(key: key);

  @override
  State<OnsiteRegistration> createState() => _OnsiteRegistrationState();
}

final _formKey = GlobalKey<FormState>();
final radioButtonController = GroupButtonController();
final TextEditingController dateController = TextEditingController();
final TextEditingController fullName = TextEditingController();

final TextEditingController mobileNumber = TextEditingController();

final TextEditingController emailID = TextEditingController();

final TextEditingController project = TextEditingController();

String type = "";

class _OnsiteRegistrationState extends State<OnsiteRegistration> {

  //on Submit Successful dialogue box
  showDataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 10.0,
            ),
            title:  Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            content: SizedBox(
              height: 200,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: Color(0XFF3EBEA8),
                    size: 80,
                  ),
                  // h=220,
                  // w=350

                  Padding(
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Text(
                      "Lead Generated Successfully!",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "#6421",
                    style: TextStyle(fontSize: 14,color: Color(0XFF5932BE)),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Onsite Registration",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black
              // Color(0xFFF1EDF2,)
              ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black, size: 20),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
        // backgroundColor: ,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF1EDF2),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 15,
              right: 20.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  BasicInfo(),
                  const AdditionalInfoContainer(),
                  const ScheduleSiteVisit(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        gradient: const LinearGradient(
                          begin: Alignment(-1, -1),
                          end: Alignment(1, 1),
                          colors: [Color(0xFFFF699C), Color(0xFF9C6BFF)],
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          disabledForegroundColor:
                              Colors.transparent.withOpacity(0.38),
                          disabledBackgroundColor:
                              Colors.transparent.withOpacity(0.12),
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {
                          showDataAlert();
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              // fontFamily: textFontFamilySegoeUI,
                              fontSize: 16,
                              color: Color(0xffffffff),
                              letterSpacing: -0.3858822937011719,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Class for Basic Information
class BasicInfo extends StatefulWidget {
  BasicInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              "Basic Information",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF281657)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text(
              "Full Name",
              style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA)),
            ),
          ),
          TextFormField(
            controller: fullName,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE6E0E8),
                ),
              ),
              hintText: "Enter Full Name",
              hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red
                    // Color(0xFFB0A8BA),
                    ),
              ),
              filled: true,
              fillColor: Color(0xFFF9F6F9),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter name';
              }
              return null;
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text("Mobile Number",
                style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: mobileNumber,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE6E0E8),
                ),
              ),
              hintText: "Enter Mobile Number",
              hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF9F6F9),
                ),
              ),
              filled: true,
              fillColor: Color(0xFFF9F6F9),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter mobile number';
              }
              return null;
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text("Email ID",
                style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
          ),
          TextFormField(
            controller: emailID,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE6E0E8),
                ),
              ),
              hintText: "Enter Email ID",
              hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Color(0xFFF9F6F9),
                    ),
              ),
              filled: true,
              fillColor: Color(0xFFF9F6F9),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text("project",
                style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
          ),
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Select from Dropdown';
              }
              return null;
            },
            items: ["Bhoomi Acres", "Second project", "Third Project"]
                .map((label) => DropdownMenuItem(
                      value: label,
                      child: Text(label.toString()),
                    ))
                .toList(),
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE6E0E8),
                ),
              ),
              hintText: "Enter Email ID",
              hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Color(0xFFF9F6F9),
                    ),
              ),
              filled: true,
              fillColor: Color(0xFFF9F6F9),
            ),
            icon: const Icon(Icons.arrow_drop_down_sharp),
            hint: const Text("Select project",
                style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
            onChanged: (val) {
              setState(() {
                String? type = val;
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            child: Text("Select Type",
                style: TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
          ),
          Row(
            children: [
              GroupButton(
                controller: radioButtonController,
                isRadio: true,
                buttons: const ["1 BHK", "2 BHK", "3 BHK"],
                onSelected: (value, index, isSelected) => print(
                    "index is $index and value is $value , is selected $isSelected"),
                options: const GroupButtonOptions(
                    unselectedColor: Color(0xFFF1EDF2),
                    selectedColor: Color(0xFFF1EDF2),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    spacing: 28,
                    buttonWidth: 90,
                    unselectedTextStyle: TextStyle(color: Colors.black54),
                    selectedTextStyle: TextStyle(
                      color: Colors.black,
                    ),
                    selectedBorderColor: Colors.black,
                    unselectedBorderColor: Colors.grey,
                    elevation: 0),
              )
            ],
          )
        ],
      ),
    );
  }
}

// class for Additional Information...
class AdditionalInfoContainer extends StatefulWidget {
  const AdditionalInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AdditionalInfoContainer> createState() =>
      _AdditionalInfoContainerState();
}

final List<TextEditingController> _controllers = [
  TextEditingController(),
];

class _AdditionalInfoContainerState extends State<AdditionalInfoContainer> {
  final TextEditingController purposeController = TextEditingController();
  final TextEditingController contfun = TextEditingController();
  void _addController(String input) {
    // Generate a word related to the input word
    // String generatedWord = input;

    // Create a map to store the controllers
    Map<String, TextEditingController> controllers = {};

    String variableName = input;
    // controllers[variableName]=TextEditingController();

    // Add the controller to the list of controllers
    setState(() {
      _controllers.add(controllers[variableName] = TextEditingController());
      ediddd = _controllers;
    });
  }

  List _textFields = [];
  List PurposeControllerValueList = [];

  void _addTextField() {
    setState(() {
      _textFields.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(PurposeControllerValueList.last,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              controller: _controllers.last,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFE6E0E8),
                  ),
                ),
                hintText: "Enter ${PurposeControllerValueList.last}",
                hintStyle: const TextStyle(color: Color(0xFFB0A8BA)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 14.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red
                      // Color(0xFFB0A8BA),
                      ),
                ),
                filled: true,
                fillColor: const Color(0xFFF9F6F9),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // bool isactive=context.watch<OnsiteProviderForStateManagement>().toggleIsActive(isvisible);
    var provider = context.watch<VisibilityProvider>().isVisible;

    return Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: ExpandablePanel(
            header: const Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text(
                "Additional Information",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF281657)),
              ),
            ),
            collapsed: const SizedBox(),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                Column(
                  children: [
                    for (var textfield in _textFields) textfield,
                  ],
                ),
                Visibility(
                  visible: provider,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0, top: 10.0),
                        child: TextFormField(
                          controller: purposeController,
                          cursorColor: Colors.black,

                          // onChanged: (text)=> _generateRelatedWord(text),
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE6E0E8),
                              ),
                            ),
                            hintText: "Enter Additional Field",
                            hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 14.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color(0xFFF9F6F9),
                                  ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF9F6F9),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  backgroundColor: const Color(0XFF3EBEA8),
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                              onPressed: () {
                                if (purposeController.text
                                    .toString()
                                    .isNotEmpty) {
                                  _addController(
                                      purposeController.text.toString());
                                  PurposeControllerValueList.add(
                                      purposeController.text.toString());
                                  purposeController.clear();
                                  _addTextField();
                                  context.read<VisibilityProvider>().hide();
                                }
                              },
                              icon: const Icon(Icons.check_circle,
                                  color: Colors.white),
                              label: const Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    backgroundColor: Colors.black,
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                onPressed: () {
                                  context.read<VisibilityProvider>().hide();
                                },
                                icon: const Icon(Icons.cancel,
                                    color: Colors.white),
                                label: const Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF8A60E0),
                            ),
                            // backgroundColor: Colors.purple,
                            textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF8A60E0),
                                fontWeight: FontWeight.w800)),
                        onPressed: () {
                          context.read<VisibilityProvider>().show();
                        },
                        icon: const Icon(Icons.add, color: Color(0xFF8A60E0)),
                        label: const Text(
                          "Custom Field",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

// Class for Schedule Site Visit
class ScheduleSiteVisit extends StatefulWidget {
  const ScheduleSiteVisit({
    Key? key,
  }) : super(key: key);

  @override
  State<ScheduleSiteVisit> createState() => _ScheduleSiteVisitState();
}

class _ScheduleSiteVisitState extends State<ScheduleSiteVisit> {
  @override
  Widget build(BuildContext context) {
    bool WatchToggle = context.watch<VisibilityProvider>().toggle;
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Schedule Site Visit",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF281657))),
                FlutterSwitch(
                    height: 24,
                    width: 50,
                    activeColor: const Color(0XFF3EBEA8),
                    value: WatchToggle,
                    onToggle: (value) {
                      context.read<VisibilityProvider>().toggling();
                    })
              ],
            ),
            Visibility(
              visible: WatchToggle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text("Expected Date",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter date';
                      }
                      return null;
                    },
                    maxLines: 1,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE6E0E8),
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Select Date",
                      hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 14.0, horizontal: 14.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            // color: Color(0xFFF9F6F9),
                            ),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF9F6F9),
                    ),
                    focusNode: AlwaysDisabledFocusNode1(),
                    onTap: () async {
                      var date = await showDatePicker(
                          builder: (context, picker) {
                            return Theme(
                                data: ThemeData.dark().copyWith(
                                    colorScheme: const ColorScheme.dark(
                                  primary: Color(0xFFC5CAE9),
                                  onPrimary: Colors.white,
                                  surface: Colors.black,
                                  onSurface: Colors.white,
                                )),
                                child: picker!);
                          },
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100));
                      dateController.text = date.toString().substring(0, 10);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: dateController,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text("Notes",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFFB0A8BA))),
                  ),
                  TextFormField(
                    maxLines: 3,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE6E0E8),
                        ),
                      ),
                      hintText: "Enter Notes",
                      hintStyle: TextStyle(color: Color(0xFFB0A8BA)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 14.0, horizontal: 14.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            // color: Color(0xFFF9F6F9),
                            ),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF9F6F9),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode1 extends FocusNode {
  @override
  bool get hasFocus => false;
}
