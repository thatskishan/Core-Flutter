import 'package:flutter/material.dart';

class ResumeBuilder extends StatefulWidget {
  const ResumeBuilder({Key? key}) : super(key: key);

  @override
  State<ResumeBuilder> createState() => _ResumeBuilderState();
}

class _ResumeBuilderState extends State<ResumeBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resume Workspace",
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
        child: Padding(
          padding: const EdgeInsets.only(
              top: 28.0, bottom: 8.0, left: 8.0, right: 8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/contact-books.png",
                        name: "Contact Info",
                        nextPage: 'resume_workspace',
                      ),
                      resumeOptionShort(
                        imagePath: "Assets/Images/briefcase.png",
                        name: "Carrier Objective",
                        nextPage: 'Carrier_objective',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/user.png",
                        name: "Personal Details",
                        nextPage: 'personal_details',
                      ),
                      resumeOptionShort(
                        imagePath: "Assets/Images/mortarboard.png",
                        name: "Education",
                        nextPage: 'education',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/experience.png",
                        name: "Experience",
                        nextPage: 'experience',
                      ),
                      resumeOptionShort(
                        imagePath: "Assets/Images/thinking.png",
                        name: "Technical Skills",
                        nextPage: 'technical_skill',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/open-book.png",
                        name: "Interest/Hobbies",
                        nextPage: 'hobbies',
                      ),
                      resumeOptionShort(
                        imagePath: "Assets/Images/project.png",
                        name: "Project",
                        nextPage: 'project',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/achievement.png",
                        name: "Achievements",
                        nextPage: 'am',
                      ),
                      resumeOptionShort(
                        imagePath: "Assets/Images/handshake.png",
                        name: "Reference",
                        nextPage: 'reference',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      resumeOptionShort(
                        imagePath: "Assets/Images/declaration.png",
                        name: "Declaration",
                        nextPage: 'declaration',
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              Navigator.pop(context);
                            },
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                alignment: Alignment.center,
                                child: Image.asset("Assets/Images/exit.png"),
                              ),
                              const Text(
                                "Exit",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
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
        ),
      ),
    );
  }

  Widget resumeOptionShort({
    required String imagePath,
    required String name,
    required String nextPage,
  }) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            Navigator.pushNamed(context, nextPage);
          },
        );
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              child: Image.asset(imagePath),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
