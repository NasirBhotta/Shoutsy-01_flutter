import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/Form.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/creating_profile_2.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/linking_networks.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/select.dart';
import 'package:textfield_tags/textfield_tags.dart';

class CreatingProfile1 extends StatefulWidget {
  const CreatingProfile1({super.key});

  @override
  State<CreatingProfile1> createState() => _CreatingProfile1State();
}

class _CreatingProfile1State extends State<CreatingProfile1> {
  XFile? image;
  String _gender = "Male";
  String _category = "Category";
  String _fashion = "Category";
  String _ethinicity = "Asian";
  DateTime? _dateTime;
  final List<String> _tags = [];
  double _distanceToField = 0;
  TextfieldTagsController _controller = TextfieldTagsController();
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  Future<void> _showDatePicker() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        _dateTime = pickedDate;
      });
    }
  }

  final GlobalKey _key = GlobalKey();

  void onSubmitted() {}
  Future<ImageSource?> openAPopUp() async {
    if (Platform.isAndroid) {
      return showModalBottomSheet(
        context: context,
        builder: (context) => Column(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Camera"),
              onTap: () {
                Navigator.of(context).pop(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Gallery"),
              onTap: () {
                Navigator.of(context).pop(ImageSource.gallery);
              },
            )
          ],
        ),
      );
    }
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(actions: [
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop(ImageSource.camera);
            },
            child: const Text("Camera")),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop(ImageSource.gallery);
            },
            child: const Text("Gallery"))
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> PickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile == null) {
        return;
      }
      image = XFile(pickedFile.path);
      setState(() {});
    } catch (e) {
      // ignore: avoid_print
      print("File is not working e");
    }
  }

  final GlobalKey<FormState> form1Key = GlobalKey<FormState>();
  final GlobalKey<ScrollableState> keyListView = GlobalKey();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        barrierDismissible: true,
        context: context,
        useSafeArea: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            titleTextStyle:
                TextStyle(fontSize: 32.h, fontWeight: FontWeight.w700),
            title: const Center(
                child: Text(
              'Important!',
            )),
            content: Text(
              'Please note that providing accurate information when creating your account and is important for brands before they buy a promotion off of you!',
              style: TextStyle(color: Colors.grey, fontSize: 14.h),
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(41, 179, 254, 1),
                        padding: EdgeInsets.only(
                            left: 40.w, right: 40.w, top: 20.h, bottom: 20.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Sounds Cool!',
                      style: GoogleFonts.poppins(fontSize: 16.h),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Creating Profile"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new))
        ],
        toolbarHeight: 100.h,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  transform: GradientRotation(1),
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromRGBO(146, 254, 157, 1),
                Color.fromRGBO(1, 201, 254, 1)
              ])),
        ),
      ),
      body: ListView(key: keyListView, children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 32),
          child: Form(
              key: form1Key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: const Color.fromRGBO(0, 201, 255, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "FirstName",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const FieldForm(lableText: "Enter First"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "LastName",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const FieldForm(lableText: "Enter Last"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const FieldForm(lableText: "Enter Email"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "UserName",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const FieldForm(lableText: "Enter UserName"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 20.h,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const FieldForm(lableText: "Password"),
                ],
              )),
        ),
        SizedBox(
          height: 40.h,
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Customization",
                style: TextStyle(
                    fontSize: 24.h,
                    color: const Color.fromRGBO(0, 201, 255, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Profile Picture",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 345.w,
                height: 186.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 245, 246, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  child: ClipOval(
                    child: GestureDetector(
                      onTap: () async {
                        final result = await openAPopUp();
                        if (result != null) {
                          PickImage(result);
                        } else {}
                      },
                      child: image != null
                          ? Image.file(
                              File(image!.path),
                              width: 141.w,
                              height: 141.h,
                            )
                          : Container(
                              color: Colors.grey,
                              width: 141.w,
                              height: 141.h,
                              child:
                                  Center(child: Image.asset("assets/add.png")),
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Marketplace Image",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 345.w,
                height: 237.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 245, 246, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () async {
                        final result = await openAPopUp();
                        if (result != null) {
                          PickImage(result);
                        } else {}
                      },
                      child: image != null
                          ? Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.file(
                                File(image!.path),
                                width: 173.w,
                                height: 221.h,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              width: 173.w,
                              height: 221.h,
                              child:
                                  Center(child: Image.asset("assets/add.png")),
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About You",
                style: TextStyle(
                    fontSize: 24.h,
                    color: const Color.fromRGBO(0, 201, 255, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Gender",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Select<String>(
                callbackAction: (value) {
                  _gender = value;
                  setState(() {});
                },
                gender: _gender,
                list: const ["Male", "Female", "Rather Not Say"],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Category",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Select<String>(
                callbackAction: (value) {
                  _category = value;
                  setState(() {});
                },
                gender: _category,
                list: const ["Category", "Category1", "Category2"],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Fashion Style",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Select<String>(
                callbackAction: (value) {
                  _fashion = value;
                  setState(() {});
                },
                gender: _fashion,
                list: const ["Category", "Category1", "Category2"],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Custom Tags",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFieldTags(
                textfieldTagsController: _controller,
                initialTags: const [],
                textSeparators: const [' ', ','],
                letterCase: LetterCase.normal,
                validator: (String tag) {
                  if (tag == 'php') {
                    return 'No, please just no';
                  } else if (_controller.getTags!.contains(tag)) {
                    return 'you already entered that';
                  }
                  return null;
                },
                inputfieldBuilder:
                    (context, tec, fn, error, onChanged, onSubmitted) {
                  return ((context, sc, tags, onTagDelete) {
                    return TextField(
                      controller: tec,
                      focusNode: fn,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            left: 15, right: 15, top: 20, bottom: 20),
                        isDense: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 74, 101, 137),
                            width: 3.0,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(41, 179, 254, 1),
                            width: 3.0,
                          ),
                        ),
                        helperText: '',
                        helperStyle: const TextStyle(
                          color: Color.fromRGBO(41, 179, 254, 1),
                        ),
                        hintText: _controller.hasTags ? '' : "Enter tag...",
                        errorText: error,
                        prefixIconConstraints:
                            BoxConstraints(maxWidth: _distanceToField * 0.74),
                        prefixIcon: tags.isNotEmpty
                            ? SingleChildScrollView(
                                controller: sc,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                    children: tags.map((String tag) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      color: Color.fromRGBO(41, 179, 254, 1),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          child: Text(
                                            '#$tag',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          onTap: () {
                                            print("$tag selected");
                                          },
                                        ),
                                        const SizedBox(width: 4.0),
                                        InkWell(
                                          child: const Icon(
                                            Icons.cancel,
                                            size: 14.0,
                                            color: Color.fromARGB(
                                                255, 233, 233, 233),
                                          ),
                                          onTap: () {
                                            onTagDelete(tag);
                                          },
                                        )
                                      ],
                                    ),
                                  );
                                }).toList()),
                              )
                            : null,
                      ),
                      onChanged: onChanged,
                      onSubmitted: onSubmitted,
                    );
                  });
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Ethinicity",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Select<String>(
                callbackAction: (value) {
                  _ethinicity = value;
                  setState(() {});
                },
                gender: _ethinicity,
                list: const ["American", "Asian", "Black", "Hispanic"],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Birthday",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 8, right: 8),
                  title: _dateTime != null
                      ? RichText(
                          text: TextSpan(children: <TextSpan>[
                          TextSpan(text: _dateTime!.month.toString()),
                          TextSpan(text: "/${_dateTime!.day}"),
                          TextSpan(text: "/${_dateTime!.year}")
                        ]))
                      : const Text("Select"),
                  trailing: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  onTap: () {
                    _showDatePicker();
                  },
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Phone Number (Optional)",
                style: TextStyle(
                    fontSize: 20.h,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.h,
              ),
              const FieldForm(lableText: "Enter Number"),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Be notified when we launch our app for selling shoutouts and getting brand deals!",
                style: TextStyle(
                    fontSize: 16.h,
                    color: const Color.fromARGB(255, 144, 144, 144)),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 67.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LinkingNetworks(),
                            ));
                      },
                      child: Text(
                        "Next Step",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
            ],
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ]),
    );
  }
}
