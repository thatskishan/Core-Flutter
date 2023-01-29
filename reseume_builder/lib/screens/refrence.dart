import 'package:flutter/material.dart';
import 'package:reseume_builder/model/Resume.dart';

class Reference extends StatefulWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController refName =
      TextEditingController(text: Resume.referenceName);
  TextEditingController desName =
      TextEditingController(text: Resume.referenceDesignation);
  TextEditingController orgName =
      TextEditingController(text: Resume.referenceNameOrg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Reference",
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
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Reference Name",
                        style: TextStyle(
                            color: Color(0xff5E4352),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: refName,
                        onSaved: (val) {
                          Resume.referenceName = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Reference Name!!!";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Manish Roy",
                          labelText: "Reference Name",
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
                            borderSide:
                                const BorderSide(color: Colors.red, width: 2.0),
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
                        controller: desName,
                        onSaved: (val) {
                          Resume.referenceDesignation = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Designation!!!";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Manager",
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
                        "Organization/Institute",
                        style: TextStyle(
                            color: Color(0xff5E4352),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: orgName,
                        onSaved: (val) {
                          Resume.referenceNameOrg = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Organization/Institute!!!";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Green Energy",
                          labelText: "Organization/Institute",
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
                            borderSide:
                                const BorderSide(color: Colors.red, width: 2.0),
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
                        height: 25,
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
                                    Resume.referenceName = null;
                                    Resume.referenceDesignation = null;
                                    Resume.referenceNameOrg = null;

                                    refName.clear();
                                    desName.clear();
                                    orgName.clear();
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
