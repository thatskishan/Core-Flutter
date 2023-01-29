import 'package:flutter/material.dart';
import 'package:reseume_builder/model/Resume.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  TextEditingController decDesController =
      TextEditingController(text: Resume.declarationDescription);
  TextEditingController decDateController =
      TextEditingController(text: Resume.declarationDate);
  TextEditingController decPlaceController =
      TextEditingController(text: Resume.declarationPlace);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Declaration",
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
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Declaration",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5E4352),
                      ),
                    ),
                    Switch(
                      value: Resume.mySwitchValue,
                      activeColor: const Color(0xff5E4352),
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.mySwitchValue = val;
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            (Resume.mySwitchValue == true)
                ? Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: formKey,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: decDesController,
                                onSaved: (val) {
                                  Resume.declarationDescription = val;
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please Enter Description !!!";
                                  } else {
                                    return null;
                                  }
                                },
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: "Description",
                                  labelText: "Description",
                                  labelStyle: const TextStyle(
                                    color: Color(0xff5E4352),
                                  ),
                                  fillColor: Colors.black,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff5E4352), width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.red, width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
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
                              const Divider(
                                thickness: 1,
                                color: Color(0xff5E4352),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Date",
                                          style: TextStyle(
                                              color: Color(0xff5E4352),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 80,
                                          width: 130,
                                          child: TextFormField(
                                            controller: decDateController,
                                            onSaved: (val) {
                                              Resume.declarationDate = val;
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Please Enter Date!!!";
                                              } else {
                                                return null;
                                              }
                                            },
                                            // keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText: "Date",
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
                                                    color: Colors.red,
                                                    width: 2.0),
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
                                    height: 120,
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Place",
                                          style: TextStyle(
                                              color: Color(0xff5E4352),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 80,
                                          width: 130,
                                          child: TextFormField(
                                            controller: decPlaceController,
                                            onSaved: (val) {
                                              Resume.declarationPlace = val;
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Please Enter Place!!!";
                                              } else {
                                                return null;
                                              }
                                            },
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              labelText: "Interview City",
                                              labelStyle: const TextStyle(
                                                color: Color(0xff5E4352),
                                              ),
                                              hintText: "Eg.Surat",
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
                                                    color: Colors.red,
                                                    width: 2.0),
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
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          formKey.currentState!.save();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content:
                                                  Text("All Details Save!!!"),
                                              backgroundColor: Colors.green,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                            ),
                                          );
                                          Navigator.of(context)
                                              .pushNamed('pdf');
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  "Please Fill All Details !!!"),
                                              backgroundColor: Colors.red,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                            ),
                                          );
                                        }
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff5E4352),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                            Resume.declarationDescription =
                                                null;
                                            Resume.declarationDate = null;
                                            Resume.declarationPlace = null;

                                            decDesController.clear();
                                            decDateController.clear();
                                            decPlaceController.clear();
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff5E4352),
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
