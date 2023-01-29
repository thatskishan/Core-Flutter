import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reseume_builder/screens/3.dart';
import 'package:reseume_builder/screens/achieve.dart';
import 'package:reseume_builder/screens/buildOptions.dart';
import 'package:reseume_builder/screens/c_o.dart';
import 'package:reseume_builder/screens/declaration.dart';
import 'package:reseume_builder/screens/education.dart';
import 'package:reseume_builder/screens/experience.dart';
import 'package:reseume_builder/screens/hobbies.dart';
import 'package:reseume_builder/screens/p_d.dart';
import 'package:reseume_builder/screens/pdf.dart';
import 'package:reseume_builder/screens/project.dart';
import 'package:reseume_builder/screens/refrence.dart';
import 'package:reseume_builder/screens/splash_screen.dart';
import 'package:reseume_builder/screens/t_s.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home_screen': (context) => const HomePage(),
        'resume_option_screen': (context) => const ResumeBuilder(),
        'resume_workspace': (context) => const ResumeWorkSpace(),
        'Carrier_objective': (context) => const CarrierObj(),
        'personal_details': (context) => const PD(),
        'education': (context) => const Education(),
        'experience': (context) => const Experience(),
        'technical_skill': (context) => const TechnicalSkill(),
        'hobbies': (context) => const Hobbies(),
        'project': (context) => const Project(),
        'am': (context) => const AM(),
        'reference': (context) => const Reference(),
        'declaration': (context) => const Declaration(),
        'pdf': (context) => const PDF(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Resume",
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
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("Assets/Images/reseume-1.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Text(
                "No any Resumes? Press '+' for Create a resume",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'resume_option_screen');
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Color(0xff5E4352),
        ),
      ),
    );
  }
}
