// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'registerPage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image(image: AssetImage('assets/shapes.png')),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: SizedBox(
                  width: 229,
                  height: 68,
                  child: Text(
                    'غابتنا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.73),
                      fontSize: 48,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image(image: AssetImage('assets/logo.png')),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Text(
                  'كون إنتي صوت الغابات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.86),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  width: 322,
                  height: 53,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 322,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Color(0xFF37B843),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 97.31,
                        top: 13.25,
                        child: SizedBox(
                          width: 125.62,
                          height: 26.50,
                          child: Text(
                            'Commencez',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
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
          Positioned(
            bottom: 0, // Aligns at the bottom
            right: 0, // Aligns at the left
            child: Image(image: AssetImage('assets/shapesRotated.png')),
          ),
        ],
      ),
    );
  }
}
