// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class AddAlert extends StatefulWidget {
  const AddAlert({super.key});

  @override
  State<AddAlert> createState() => _AddAlertState();
}

class _AddAlertState extends State<AddAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ensures the screen resizes to avoid overflow
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 52, 25, 0),
              child: Row(
                children: [
                  const Image(image: AssetImage('assets/shapes.png')),
                  Spacer(),
                  SizedBox(
                    width: 170,
                    height: 39,
                    child: Text(
                      'Ajouter Alerte',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.86),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 340,
              child: SizedBox(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Alert Type ',
                        style: TextStyle(
                          color: Color(0xFF6F7482),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.16,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFFED0131),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 30),
              width: 350,
              height: 60,
              child: DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 'Incendie', label: 'incendie'),
                  DropdownMenuEntry(value: 'Poubelle', label: 'Poubelle'),
                  DropdownMenuEntry(value: 'Abattage', label: 'Abattage'),
                 
                ],
                width: 350,
              ),
            ),
            SizedBox(
              width: 340,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Get Localisation ',
                      style: TextStyle(
                        color: Color(0xFF6F7482),
                        fontSize: 16,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                        letterSpacing: 0.16,
                      ),
                    ),
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Color(0xFFED0131),
                        fontSize: 16,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                        letterSpacing: 0.16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              width: 348,
              height: 150,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/localisation.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 5, color: Color(0xFF20A090)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 10, 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    height: 25,
                    width: 250,
                    child: TextField(),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Color(0xFF528265),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    ),
                    child: Image(image: AssetImage('assets/pin.png')),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 340,
              child: SizedBox(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Forets ',
                        style: TextStyle(
                          color: Color(0xFF6F7482),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.16,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFFED0131),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              width: 350,
              height: 60,
              child: DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 'Foret RasJebel', label: 'Foret RasJebel'),
                  DropdownMenuEntry(value: 'Foret Rafraf', label: 'Foret Rafraf'),
                  DropdownMenuEntry(value: 'Foret Rimel', label: 'Foret Rimel'),
                 
                ],
                width: 350,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: SizedBox(
                width: 340,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Description ',
                        style: TextStyle(
                          color: Color(0xFF6F7482),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.16,
                        ),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: Color(0xFFED0131),
                          fontSize: 16,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 350,
              height: 50,
              child: TextField(
                minLines: 3, // Set this
                maxLines: 6, // and this
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              width: 203,
              height: 59,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 203,
                      height: 59,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD2D9D1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 56,
                    top: 17,
                    child: SizedBox(
                      width: 134,
                      height: 25,
                      child: Text(
                        'Ajouter Image',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 18.75,
                    child: Container(
                      width: 24,
                      height: 22.50,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      child: Image(image: AssetImage('assets/add_pic.png')),
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
