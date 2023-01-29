import 'package:flutter/material.dart';
import 'package:reseume_builder/model/Resume.dart';

class PD extends StatefulWidget {
  const PD({Key? key}) : super(key: key);

  @override
  State<PD> createState() => _PDState();
}

class _PDState extends State<PD> {
  TextEditingController dobController =
      TextEditingController(text: Resume.dateOfBirth);
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Details",
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
        padding: const EdgeInsets.all(30),
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
                      "Date Of Birth",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: dobController,
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {
                        Resume.dateOfBirth = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Date Of Birth !!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        labelText: "Date of Birth",
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
                      "Marital Status",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RadioListTile(
                      value: "Male",
                      title: const Text("Male"),
                      activeColor: const Color(0xff5E4352),
                      groupValue: Resume.maritalStatus,
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.maritalStatus = val;
                          },
                        );
                      },
                    ),
                    RadioListTile(
                      value: "Female",
                      title: const Text("Female"),
                      activeColor: const Color(0xff5E4352),
                      groupValue: Resume.maritalStatus,
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.maritalStatus = val;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Language Known",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CheckboxListTile(
                      title: const Text("English"),
                      value: Resume.english,
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: const Color(0xff5E4352),
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.english = val!;
                          },
                        );
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Gujarati"),
                      value: Resume.gujarati,
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: const Color(0xff5E4352),
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.gujarati = val!;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Nationality",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DropdownButton(
                      onChanged: (val) {
                        setState(
                          () {
                            Resume.nationalityButton = val;
                          },
                        );
                      },
                      hint: const Text("Select Country"),
                      value: Resume.nationalityButton,
                      borderRadius: BorderRadius.circular(20),
                      items: const [
                        DropdownMenuItem(
                          value: "India",
                          child: Text("India"),
                        ),
                        DropdownMenuItem(
                          value: "Australia",
                          child: Text("Australia"),
                        ),
                        DropdownMenuItem(
                          value: "Canada",
                          child: Text("Canada"),
                        ),
                        DropdownMenuItem(
                          value: "America",
                          child: Text("America"),
                        ),
                        DropdownMenuItem(
                          value: "United Kingdom",
                          child: Text("United Kingdom"),
                        ),
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
                                  dobController.clear();
                                  Resume.english = false;
                                  Resume.gujarati = false;
                                  Resume.maritalStatus = null;
                                  Resume.nationalityButton = null;
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
                                  fontWeight: FontWeight.bold,
                                ),
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
