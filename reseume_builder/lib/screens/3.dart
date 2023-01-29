import 'dart:io';
import 'package:flutter/material.dart';
import 'package:reseume_builder/model/Resume.dart';
import 'package:image_picker/image_picker.dart';

class ResumeWorkSpace extends StatefulWidget {
  const ResumeWorkSpace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkSpace> createState() => _ResumeWorkSpaceState();
}

class _ResumeWorkSpaceState extends State<ResumeWorkSpace> {
  getImageFromGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.gallery);

    if (img != null) {
      setState(
        () {
          Resume.image = File(img.path);
        },
      );
    }
  }

  getImageFromCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.camera);

    if (img != null) {
      setState(
        () {
          Resume.image = File(img.path);
        },
      );
    }
  }

  int index = 0;
  Color myActive = Colors.white;
  Color myInActive = const Color(0xff5E4352);
  TextEditingController nameController =
      TextEditingController(text: Resume.name);
  TextEditingController emailController =
      TextEditingController(text: Resume.email);
  TextEditingController phoneController = TextEditingController(
      text: (Resume.phone != null) ? Resume.phone.toString() : null);
  TextEditingController addressController =
      TextEditingController(text: Resume.address);
  TextEditingController address1Controller =
      TextEditingController(text: Resume.address1);
  TextEditingController address2Controller =
      TextEditingController(text: Resume.address2);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Info",
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
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          index = 0;
                          myActive = Colors.white;
                          myInActive = const Color(0xff5E4352);
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: const Color(0xff5E4352),
                        border: Border(
                          bottom: BorderSide(width: 2, color: myActive),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          index = 1;
                          myInActive = Colors.white;
                          myActive = const Color(0xff5E4352);
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: const Color(0xff5E4352),
                        border: Border(
                          bottom: BorderSide(width: 2, color: myInActive),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: IndexedStack(
                index: index,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Form(
                          key: formKey,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.account_box,
                                        color: Color(0xff5E4352),
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: nameController,
                                          keyboardType: TextInputType.text,
                                          textInputAction: TextInputAction.next,
                                          onSaved: (val) {
                                            Resume.name = val;
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Name";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Name",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
                                            ),
                                            fillColor: Colors.black,
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
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.email,
                                        color: Color(0xff5E4352),
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: emailController,
                                          textInputAction: TextInputAction.next,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          onSaved: (val) {
                                            Resume.email = val;
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter E-mail";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "E-mail",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
                                            ),
                                            fillColor: Colors.black,
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.phone_android,
                                        color: Color(0xff5E4352),
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: phoneController,
                                          textInputAction: TextInputAction.next,
                                          keyboardType: TextInputType.number,
                                          onSaved: (val) {
                                            Resume.phone = int.parse(val!);
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Phone Number";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Phone",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
                                            ),
                                            fillColor: Colors.black,
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Color(0xff5E4352),
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: addressController,
                                          textInputAction: TextInputAction.next,
                                          onSaved: (val) {
                                            Resume.address = val;
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address (Street,Building) !!!";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText:
                                                "Address (Street,Building)",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
                                            ),
                                            fillColor: Colors.black,
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: address1Controller,
                                          textInputAction: TextInputAction.next,
                                          onSaved: (val) {
                                            Resume.address1 = val;
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address Line 2 !!!";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Address Line 2",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
                                            ),
                                            fillColor: Colors.black,
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Flexible(
                                        child: TextFormField(
                                          controller: address2Controller,
                                          onSaved: (val) {
                                            Resume.address2 = val;
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter Address Line 3 !!!";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Address Line 3",
                                            labelStyle: const TextStyle(
                                              color: Color(0xff5E4352),
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
                                            fillColor: Colors.black,
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
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (formKey.currentState!
                                              .validate()) {
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
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  "Please Fill All Details !!!",
                                                ),
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
                                              Resume.name = null;
                                              Resume.email = null;
                                              Resume.phone = null;
                                              Resume.address = null;
                                              Resume.address1 = null;
                                              Resume.address2 = null;

                                              nameController.clear();
                                              emailController.clear();
                                              addressController.clear();
                                              address1Controller.clear();
                                              address2Controller.clear();
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 75,
                                foregroundImage: (Resume.image != null)
                                    ? FileImage(Resume.image!)
                                    : null,
                                child: const Text(
                                  "Add Image",
                                  style: TextStyle(
                                    color: Color(0xff5E4352),
                                  ),
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: const Color(0xff5E4352),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(
                                        "Select the method",
                                        style:
                                            TextStyle(color: Color(0xff5E4352)),
                                      ),
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Divider(
                                            thickness: 1,
                                            color: Colors.black,
                                          ),
                                          TextButton.icon(
                                            onPressed: () {
                                              getImageFromGallery();
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.image_outlined,
                                              color: Color(0xff5E4352),
                                            ),
                                            label: const Text(
                                              "Gallery",
                                              style: TextStyle(
                                                  color: Color(0xff5E4352)),
                                            ),
                                          ),
                                          TextButton.icon(
                                            onPressed: () {
                                              getImageFromCamera();
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.camera_alt_outlined,
                                              color: Color(0xff5E4352),
                                            ),
                                            label: const Text(
                                              "Camera",
                                              style: TextStyle(
                                                  color: Color(0xff5E4352)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                mini: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(Icons.camera_alt_outlined),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
