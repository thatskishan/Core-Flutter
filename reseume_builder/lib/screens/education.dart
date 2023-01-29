import 'package:flutter/material.dart';

import '../model/Resume.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController courseController =
      TextEditingController(text: Resume.course);
  TextEditingController schoolController =
      TextEditingController(text: Resume.school);
  TextEditingController resultController = TextEditingController(
      text: (Resume.results != null) ? Resume.results.toString() : null);
  TextEditingController yearController = TextEditingController(
      text: (Resume.yearOfPass != null) ? Resume.yearOfPass.toString() : null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Education",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        // backgroundColor: const Color(0xff5E4352),
      ),
      backgroundColor: const Color(0xff9B8B94),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Course/Degree",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: courseController,
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {
                        Resume.course = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Course/Degree !!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Computer Engineering",
                        labelText: "Course/Degree",
                        labelStyle: const TextStyle(
                          color: Color(0xff5E4352),
                        ),
                        fillColor: Colors.black,
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "School/College/Institute",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: schoolController,
                      onSaved: (val) {
                        Resume.school = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter School/College/Institute!!!";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "IIT Madras",
                        labelText: "School/College/Institute",
                        labelStyle: const TextStyle(
                          color: Color(0xff5E4352),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        fillColor: Colors.black,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Results",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: resultController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        Resume.results = double.parse(val!);
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Results !!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "70% (or) 7.0 CGPA",
                        labelText: "Results",
                        labelStyle: const TextStyle(
                          color: Color(0xff5E4352),
                        ),
                        fillColor: Colors.black,
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Year Of Pass",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: yearController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        Resume.yearOfPass = int.parse(val!);
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please EnterYear Of Pass !!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "2016",
                        labelText: "Year",
                        labelStyle: const TextStyle(
                          color: Color(0xff5E4352),
                        ),
                        fillColor: Colors.black,
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5E4352), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("All Details Save!!!"),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text("Please Fill All Details !!!"),
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color(0xff5E4352),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Save",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  Resume.course = null;
                                  Resume.school = null;
                                  Resume.results = null;
                                  Resume.yearOfPass = null;

                                  courseController.clear();
                                  schoolController.clear();
                                  resultController.clear();
                                  yearController.clear();
                                },
                              );
                            },
                            child: Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color(0xff5E4352),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Reset",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
