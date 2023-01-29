import 'package:flutter/material.dart';

import '../model/Resume.dart';

class CarrierObj extends StatefulWidget {
  const CarrierObj({Key? key}) : super(key: key);

  @override
  State<CarrierObj> createState() => _CarrierObjState();
}

class _CarrierObjState extends State<CarrierObj> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController carrierObjController =
      TextEditingController(text: Resume.carrierObjective);
  TextEditingController currentDesController =
      TextEditingController(text: Resume.currentDesignation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Carrier Objective",
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
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 310,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Carrier Objective",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5E4352),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: carrierObjController,
                              textInputAction: TextInputAction.next,
                              onSaved: (val) {
                                Resume.carrierObjective = val;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Please Enter Carrier Objective";
                                } else {
                                  return null;
                                }
                              },
                              maxLines: 8,
                              decoration: InputDecoration(
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
                                focusedBorder: OutlineInputBorder(
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
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Current Designation (Experienced Candidate)",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5E4352),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: currentDesController,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              Resume.currentDesignation = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter current Designation!!!";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "Designation",
                              labelStyle: const TextStyle(
                                color: Color(0xff5E4352),
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
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
                                content: Text("Please Fill All Details !!!"),
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
                              Resume.carrierObjective = null;
                              Resume.currentDesignation = null;

                              carrierObjController.clear();
                              currentDesController.clear();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
