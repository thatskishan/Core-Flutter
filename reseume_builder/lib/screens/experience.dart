import 'package:flutter/material.dart';

import '../model/Resume.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> radioFormKey = GlobalKey<FormState>();

  TextEditingController companyController =
      TextEditingController(text: Resume.companyName);
  TextEditingController sciController = TextEditingController(text: Resume.sci);
  TextEditingController rolesController =
      TextEditingController(text: Resume.roles);
  TextEditingController djController =
      TextEditingController(text: Resume.dateJoined);
  TextEditingController deController =
      TextEditingController(text: Resume.dateExit);
  TextEditingController cdjController =
      TextEditingController(text: Resume.currentlyJoinDate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Experience",
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
        child: Center(
          child: Container(
            height: double.infinity,
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
                        "Company Name",
                        style: TextStyle(
                            color: Color(0xff5E4352),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: companyController,
                        textInputAction: TextInputAction.next,
                        onSaved: (val) {
                          Resume.companyName = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Company Name";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "TCS Info tech",
                          labelText: "Company Name",
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
                        "Designation",
                        style: TextStyle(
                            color: Color(0xff5E4352),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: sciController,
                        onSaved: (val) {
                          Resume.sci = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Designation!!!";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Front end Developer",
                          labelText: "Designation",
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
                        "Roles (Optional)",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5E4352),
                        ),
                      ),
                      TextFormField(
                        onSaved: (val) {
                          Resume.roles = val;
                        },
                        controller: rolesController,
                        textInputAction: TextInputAction.next,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: "Roles",
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
                        height: 10,
                      ),
                      const Text(
                        "Employment Status",
                        style: TextStyle(
                            color: Color(0xff5E4352),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "employed",
                            groupValue: Resume.exp,
                            activeColor: const Color(0xff5E4352),
                            onChanged: (val) {
                              setState(
                                () {
                                  Resume.exp = val;
                                  Resume.index = 0;
                                },
                              );
                            },
                          ),
                          const Text("Previously\nEmployed"),
                          Radio(
                            value: "cnemployed",
                            groupValue: Resume.exp,
                            activeColor: const Color(0xff5E4352),
                            onChanged: (val) {
                              setState(
                                () {
                                  Resume.exp = val;
                                  Resume.index = 1;
                                },
                              );
                            },
                          ),
                          const Text("Currently\nEmployed"),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IndexedStack(
                        index: Resume.index,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 85,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Date Joined",
                                      style: TextStyle(
                                          color: Color(0xff5E4352),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 130,
                                      child: TextFormField(
                                        controller: djController,
                                        // keyboardType: TextInputType.number,
                                        onSaved: (val) {
                                          Resume.dateJoined = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Date Of Join!!!";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                          labelText: "Date of Join",
                                          labelStyle: const TextStyle(
                                              color: Color(0xff5E4352)),
                                          hintText: "DD/MM/YYYY",
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 85,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Date Exit",
                                      style: TextStyle(
                                          color: Color(0xff5E4352),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 130,
                                      child: TextFormField(
                                        controller: deController,
                                        onSaved: (val) {
                                          Resume.dateExit = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Date Of Exit!!!";
                                          } else {
                                            return null;
                                          }
                                        },
                                        // keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: "Date of Exit",
                                          labelStyle: const TextStyle(
                                            color: Color(0xff5E4352),
                                          ),
                                          hintText: "DD/MM/YYYY",
                                          fillColor: Colors.black,
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 85,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Date Joined",
                                      style: TextStyle(
                                          color: Color(0xff5E4352),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 130,
                                      child: TextFormField(
                                        controller: cdjController,
                                        onSaved: (val) {
                                          Resume.currentlyJoinDate = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Join Date!!!";
                                          } else {
                                            return null;
                                          }
                                        },
                                        // keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: "Join Date",
                                          labelStyle: const TextStyle(
                                              color: Color(0xff5E4352)),
                                          fillColor: Colors.black,
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.red, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xff5E4352),
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                print("${Resume.dateJoined}");
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
                                    Resume.companyName = null;
                                    Resume.sci = null;
                                    Resume.roles = null;
                                    Resume.exp = null;
                                    Resume.dateJoined = null;
                                    Resume.dateExit = null;
                                    Resume.currentlyJoinDate = null;

                                    companyController.clear();
                                    sciController.clear();
                                    rolesController.clear();
                                    djController.clear();
                                    deController.clear();
                                    cdjController.clear();
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
      ),
    );
  }
}
