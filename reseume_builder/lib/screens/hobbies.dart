import 'package:flutter/material.dart';

import '../model/Resume.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hobbies",
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
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter Your Hobbies: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff5E4352),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ...Resume.hobbies
                  .map(
                    (e) => Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintText: "Enter Your Hobbies",
                                labelText: "Hobbies",
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
                              ),
                              controller: Resume
                                  .hobbiesController[Resume.hobbies.indexOf(e)],
                              onChanged: (val) {
                                setState(
                                  () {
                                    Resume.hobbies[Resume.hobbies.indexOf(e)] =
                                        val;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        deleteItem(
                          index: Resume.hobbies.indexOf(e),
                        ),
                      ],
                    ),
                  )
                  .toList(),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      Resume.hobbies.add("${i++}");
                      Resume.hobbiesController.add(
                        TextEditingController(),
                      );
                    },
                  );
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff5E4352),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        Navigator.pop(context);
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
                      "Save",
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
        ),
      ),
    );
  }

  Widget deleteItem({required int index}) {
    return IconButton(
      onPressed: () {
        setState(
          () {
            Resume.hobbiesController.removeAt(index);
            Resume.hobbies.remove(
              Resume.hobbies[index],
            );
          },
        );
      },
      icon: const Icon(Icons.delete),
    );
  }
}
