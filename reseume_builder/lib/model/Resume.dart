import 'package:flutter/material.dart';
import 'dart:io';

class Resume {
  static String? name;
  static String? email;
  static int? phone;
  static String? address;
  static String? address1;
  static String? address2;
  static String? carrierObjective;
  static String? currentDesignation;
  static String? dateOfBirth;
  static String? maritalStatus;
  static bool english = false;
  static bool gujarati = false;
  static String? nationalityButton;
  static String? course;
  static String? school;
  static double? results;
  static int? yearOfPass;
  static int index = 0;
  static String? companyName;
  static String? sci;
  static String? roles;
  static String? exp;
  static String? dateJoined;
  static String? dateExit;
  static String? projectTitle;
  static bool cLang = false;
  static bool C = false;
  static bool Flutter = false;
  static String? rolesProject;
  static String? technologies;
  static String? projectDescription;
  static String? referenceName;
  static String? referenceDesignation;
  static String? referenceNameOrg;
  static String? declarationDescription;
  static String? declarationDate;
  static String? declarationPlace;
  static String? currentlyJoinDate;
  static bool mySwitchValue = false;

  static File? image;
  static List skills = [];
  static List<TextEditingController> skillController = [];
  static List achievement = [];
  static List<TextEditingController> achievementController = [];
  static List hobbies = [];
  static List<TextEditingController> hobbiesController = [];

  Color myBackGroundColor = Colors.white;
}
