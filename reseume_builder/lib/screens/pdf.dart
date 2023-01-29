import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:reseume_builder/model/Resume.dart';
import 'dart:io';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  pw.Document pdf = pw.Document();
  final image = pw.MemoryImage(File(Resume.image!.path).readAsBytesSync());
  @override
  void initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Center(
          child: pw.Container(
            height: double.infinity,
            width: double.infinity,
            child: pw.Row(
              children: [
                pw.Expanded(
                  flex: 1,
                  child: pw.Container(
                    color: PdfColors.black,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.all(10),
                          child: pw.ClipRRect(
                            horizontalRadius: 20,
                            verticalRadius: 20,
                            child: pw.Image(image),
                          ),
                        ),
                        pw.SizedBox(
                          height: 20,
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 20,
                          ),
                          child: pw.Text(
                            "Education Details",
                            style: const pw.TextStyle(
                              fontSize: 18,
                              letterSpacing: 4,
                              color: PdfColors.white,
                            ),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 20,
                          ),
                          child: pw.Divider(color: PdfColors.yellow),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 30,
                          ),
                          child: pw.Container(
                            height: 100,
                            width: double.infinity,
                            child: pw.Column(
                                mainAxisAlignment:
                                    pw.MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Course: ${Resume.course}",
                                    style: const pw.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                  pw.Text(
                                    "Institute: ${Resume.school}",
                                    style: const pw.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                  pw.Text(
                                    "Results: ${Resume.results} %",
                                    style: const pw.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                  pw.Text(
                                    "Year of Pass: ${Resume.yearOfPass}",
                                    style: const pw.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        pw.SizedBox(
                          height: 20,
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 20,
                          ),
                          child: pw.Text(
                            "Reference",
                            style: const pw.TextStyle(
                              fontSize: 18,
                              letterSpacing: 4,
                              color: PdfColors.white,
                            ),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 20,
                          ),
                          child: pw.Divider(color: PdfColors.yellow),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(
                            left: 30,
                          ),
                          child: pw.Container(
                            height: 80,
                            width: double.infinity,
                            child: pw.Column(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "Name: ${Resume.referenceName}",
                                  style: const pw.TextStyle(
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.Text(
                                  "Designation: ${Resume.referenceDesignation}",
                                  style: const pw.TextStyle(
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.Text(
                                  "Institute: ${Resume.referenceNameOrg}",
                                  style: const pw.TextStyle(
                                    color: PdfColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.yellow,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.blueGrey,
                              child: pw.Text(
                                "Phone",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                  letterSpacing: 4,
                                ),
                              ),
                            ),
                          )
                        ]),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.SizedBox(
                              height: 20,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 15,
                              child: pw.Text(
                                "${Resume.phone}",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.yellow,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.blueGrey,
                              child: pw.Text(
                                "E-Mail",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                  letterSpacing: 4,
                                ),
                              ),
                            ),
                          )
                        ]),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.SizedBox(
                              height: 20,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 15,
                              child: pw.Text(
                                "${Resume.email}",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                        pw.SizedBox(
                          height: 8,
                        ),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.yellow,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 15,
                              color: PdfColors.blueGrey,
                              child: pw.Text(
                                "Address",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                  letterSpacing: 4,
                                ),
                              ),
                            ),
                          )
                        ]),
                        pw.Row(children: [
                          pw.Expanded(
                            child: pw.SizedBox(
                              height: 20,
                            ),
                          ),
                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 50,
                              child: pw.Text(
                                "${Resume.address},${Resume.address1},${Resume.address2}",
                                style: const pw.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),
                ),
                pw.Expanded(
                  flex: 2,
                  child: pw.Container(
                    color: PdfColors.white,
                    child: pw.Column(
                      children: [
                        pw.SizedBox(
                          height: 20,
                        ),
                        pw.Container(
                          height: 30,
                          width: double.infinity,
                          color: PdfColors.yellow800,
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                            "${Resume.name}",
                            style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 26,
                              fontStyle: pw.FontStyle.italic,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        pw.Container(
                          padding: const pw.EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          margin: const pw.EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          height: 665,
                          width: double.infinity,
                          color: PdfColors.white,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "ABOUT ME",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                  letterSpacing: 2,
                                ),
                              ),
                              pw.Divider(
                                thickness: 1,
                                color: PdfColors.black,
                              ),
                              pw.Text(
                                "- Date Of Birth : ${Resume.dateOfBirth}",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                "- Gender : ${Resume.maritalStatus}",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                "- Language Known : ",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                ),
                              ),
                              (Resume.english == true)
                                  ? pw.Text(
                                      "   - English",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                      ),
                                    )
                                  : pw.SizedBox(),
                              (Resume.gujarati == true)
                                  ? pw.Text(
                                      "   - Gujarati",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                      ),
                                    )
                                  : pw.SizedBox(),
                              pw.Text(
                                "- Nationality : ${Resume.nationalityButton}",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.SizedBox(
                                height: 15,
                              ),
                              pw.Text(
                                "WORK EXPERIENCE",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                  letterSpacing: 2,
                                ),
                              ),
                              pw.Divider(
                                thickness: 1,
                                color: PdfColors.black,
                              ),
                              pw.Row(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "${Resume.dateJoined} - ${Resume.dateExit}",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 25,
                                    ),
                                    pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "${Resume.sci}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                            ),
                                          ),
                                          pw.Text(
                                            "${Resume.companyName}",
                                            style: const pw.TextStyle(
                                              color: PdfColors.black,
                                            ),
                                          ),
                                          pw.SizedBox(
                                            height: 15,
                                          ),
                                          pw.Container(
                                            width: 250,
                                            child: pw.Text(
                                              "${Resume.roles}",
                                              style: const pw.TextStyle(
                                                color: PdfColors.black,
                                              ),
                                            ),
                                          ),
                                        ])
                                  ]),
                              pw.SizedBox(
                                height: 15,
                              ),
                              pw.Text(
                                "Carrier Objective",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                  letterSpacing: 2,
                                ),
                              ),
                              pw.Divider(
                                thickness: 1,
                                color: PdfColors.black,
                              ),
                              pw.Row(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "${Resume.currentDesignation}",
                                    style: const pw.TextStyle(
                                      color: PdfColors.black,
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 35,
                                  ),
                                  pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Container(
                                        width: 200,
                                        child: pw.Text(
                                          "${Resume.carrierObjective}",
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              pw.SizedBox(
                                height: 15,
                              ),
                              pw.Text(
                                "Projects",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                  letterSpacing: 2,
                                ),
                              ),
                              pw.Divider(
                                thickness: 1,
                                color: PdfColors.black,
                              ),
                              pw.Row(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          "${Resume.projectTitle}",
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                          ),
                                        ),
                                        pw.Text(
                                          "- Technologies : ",
                                          style: const pw.TextStyle(
                                            color: PdfColors.black,
                                          ),
                                        ),
                                        (Resume.cLang == true)
                                            ? pw.Text(
                                                "   - C programming",
                                                style: const pw.TextStyle(
                                                  color: PdfColors.black,
                                                ),
                                              )
                                            : pw.SizedBox(),
                                        (Resume.C == true)
                                            ? pw.Text(
                                                "   - C++",
                                                style: const pw.TextStyle(
                                                  color: PdfColors.black,
                                                ),
                                              )
                                            : pw.SizedBox(),
                                        (Resume.Flutter == true)
                                            ? pw.Text(
                                                "   - Flutter",
                                                style: const pw.TextStyle(
                                                  color: PdfColors.black,
                                                ),
                                              )
                                            : pw.SizedBox(),
                                      ]),
                                  pw.SizedBox(
                                    width: 35,
                                  ),
                                  pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "Role: ${Resume.rolesProject}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                      pw.Text(
                                        "Technologies: ${Resume.technologies}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                      pw.Text(
                                        "${Resume.projectDescription}",
                                        style: const pw.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceEvenly,
                                  children: [
                                    pw.Column(children: [
                                      pw.Text(
                                        "Technical Skills",
                                        style: pw.TextStyle(
                                          color: PdfColors.black,
                                          fontStyle: pw.FontStyle.italic,
                                          fontWeight: pw.FontWeight.bold,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                      ),
                                      pw.Container(
                                        width: 100,
                                        child: pw.Text(
                                          "${Resume.skills}",
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontStyle: pw.FontStyle.italic,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      ),
                                    ]),
                                    pw.SizedBox(
                                      width: 10,
                                    ),
                                    pw.Column(children: [
                                      pw.Text(
                                        "Achievements",
                                        style: pw.TextStyle(
                                          color: PdfColors.black,
                                          fontWeight: pw.FontWeight.bold,
                                          fontStyle: pw.FontStyle.italic,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                      ),
                                      pw.Container(
                                        width: 100,
                                        child: pw.Text(
                                          "${Resume.achievement}",
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontStyle: pw.FontStyle.italic,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      )
                                    ]),
                                    pw.SizedBox(
                                      width: 10,
                                    ),
                                    pw.Column(children: [
                                      pw.Text(
                                        "Hobbies",
                                        style: pw.TextStyle(
                                          color: PdfColors.black,
                                          fontWeight: pw.FontWeight.bold,
                                          fontStyle: pw.FontStyle.italic,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                      pw.Divider(
                                        thickness: 1,
                                        color: PdfColors.black,
                                      ),
                                      pw.Container(
                                        width: 100,
                                        child: pw.Text(
                                          "${Resume.hobbies}",
                                          style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontStyle: pw.FontStyle.italic,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      )
                                    ]),
                                  ]),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Text(
                                "Declaration",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                  letterSpacing: 2,
                                ),
                              ),
                              pw.Divider(
                                thickness: 1,
                                color: PdfColors.black,
                              ),
                              pw.Text(
                                "${Resume.declarationDescription}",
                                style: const pw.TextStyle(
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.SizedBox(
                                height: 10,
                              ),
                              pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Date: ${Resume.declarationDate}",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 30,
                                    ),
                                    pw.Text(
                                      "Place: ${Resume.declarationPlace}",
                                      style: const pw.TextStyle(
                                        color: PdfColors.black,
                                      ),
                                    ),
                                  ])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              Uint8List data = await pdf.save();
              await Printing.layoutPdf(onLayout: (format) => data);
            },
            icon: const Icon(
              Icons.picture_as_pdf,
              color: Colors.red,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff9B8B94),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            Uint8List data = await pdf.save();
            await Printing.layoutPdf(onLayout: (format) => data);
          },
          child: Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Download PDF",
              style: TextStyle(
                  color: Color(0xff5E4352),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
