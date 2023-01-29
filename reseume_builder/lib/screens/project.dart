import 'package:flutter/material.dart';
import 'package:reseume_builder/model/Resume.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  TextEditingController projectController =
      TextEditingController(text: Resume.projectTitle);
  TextEditingController rolesController =
      TextEditingController(text: Resume.rolesProject);
  TextEditingController techController =
      TextEditingController(text: Resume.technologies);
  TextEditingController projectDesController =
      TextEditingController(text: Resume.projectDescription);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Projects",
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
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Project Title",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: projectController,
                      onSaved: (val) {
                        Resume.projectTitle = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Project Title";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Resume Builder App",
                        labelText: "Project Title",
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
                      "Technologies",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: Resume.cLang,
                          activeColor: const Color(0xff5E4352),
                          onChanged: (val) {
                            setState(
                              () {
                                Resume.cLang = val!;
                              },
                            );
                          },
                        ),
                        const Text(
                          "C Programming",
                          style: TextStyle(
                            color: Color(0xff5E4352),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: Resume.C,
                          activeColor: const Color(0xff5E4352),
                          onChanged: (val) {
                            setState(
                              () {
                                Resume.C = val!;
                              },
                            );
                          },
                        ),
                        const Text(
                          "C++",
                          style: TextStyle(
                            color: Color(0xff5E4352),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: Resume.Flutter,
                          activeColor: const Color(0xff5E4352),
                          onChanged: (val) {
                            setState(
                              () {
                                Resume.Flutter = val!;
                              },
                            );
                          },
                        ),
                        const Text(
                          "Flutter",
                          style: TextStyle(
                            color: Color(0xff5E4352),
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Roles",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: rolesController,
                      onSaved: (val) {
                        Resume.rolesProject = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Your Roles!!!";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Organize Team Members",
                        labelText: "Roles",
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
                      "Technologies",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: techController,
                      onSaved: (val) {
                        Resume.technologies = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Technologies!!!";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "5 - Programmers",
                        labelText: "Technologies",
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
                      "Project Description",
                      style: TextStyle(
                          color: Color(0xff5E4352),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: projectDesController,
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {
                        Resume.projectDescription = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Project Description!!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Project Description",
                        labelText: "Project Description",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.center,
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
                                color: Color(0xff5E4352),
                                borderRadius: BorderRadius.circular(40),
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
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Resume.cLang = false;
                                Resume.C = false;
                                Resume.Flutter = false;
                                Resume.projectTitle = null;
                                Resume.rolesProject = null;
                                Resume.technologies = null;
                                Resume.projectDescription = null;

                                projectController.clear();
                                rolesController.clear();
                                techController.clear();
                                projectDesController.clear();
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xff5E4352),
                                borderRadius: BorderRadius.circular(40),
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
                    )
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
