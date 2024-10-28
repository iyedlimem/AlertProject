// ignore_for_file: prefer_const_constructors

import 'package:alert/homePage.dart';
import 'package:flutter/material.dart';

class Historique extends StatelessWidget {
  const Historique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Color(0xFF528265),
      child: Column(
        
        children: [
          Container(
            height: 160,
            color: Color(0xFF528265),
            child: Stack(
              children: [
                            Align(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage('assets/shapes.png')),
                ),
                Container(
                  
                  margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                  
                  child: GestureDetector(
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                    child: Image(image: AssetImage('assets/previous.png'))),
                )
                
              ],
            ),
          ),
          Container(
           decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255), // White background color
               
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ), // Rounded corners
              ),
            width: 410,
            height: 662,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 0, 15),
                  child: Text('Historique Des Alertes',style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Philosopher',
      fontWeight: FontWeight.w400,
      height: 0,
      letterSpacing: 1,
    ), ) ,
                  
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                       width: 363.62,
                      height: 68.09,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 48,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.history,color: Colors.black,)),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              width: 150,
                              
                              child: Column(
                                children: [
                                SizedBox(
                                                    width: 187,
                                                    height: 21,
                                                    child: Text(
                                                      'idRapport:1234',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                SizedBox(
                                                    width: 216,
                                                    height: 17,
                                                    child: Text(
                                                      'Détails ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  )
                              ],),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                       width: 363.62,
                      height: 68.09,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 48,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.history,color: Colors.black,)),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              width: 150,
                              
                              child: Column(
                                children: [
                                SizedBox(
                                                    width: 187,
                                                    height: 21,
                                                    child: Text(
                                                      'idRapport:1234',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                SizedBox(
                                                    width: 216,
                                                    height: 17,
                                                    child: Text(
                                                      'Détails ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  )
                              ],),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                       width: 363.62,
                      height: 68.09,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 48,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.history,color: Colors.black,)),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              width: 150,
                              
                              child: Column(
                                children: [
                                SizedBox(
                                                    width: 187,
                                                    height: 21,
                                                    child: Text(
                                                      'idRapport:1234',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                SizedBox(
                                                    width: 216,
                                                    height: 17,
                                                    child: Text(
                                                      'Détails ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  )
                              ],),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                       width: 363.62,
                      height: 68.09,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x1E000000),
                            blurRadius: 48,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(Icons.history,color: Colors.black,)),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                              width: 150,
                              
                              child: Column(
                                children: [
                                SizedBox(
                                                    width: 187,
                                                    height: 21,
                                                    child: Text(
                                                      'idRapport:1234',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  ),
                                SizedBox(
                                                    width: 216,
                                                    height: 17,
                                                    child: Text(
                                                      'Détails ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                        letterSpacing: 1,
                                                      ),
                                                    ),
                                                  )
                              ],),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        ],
                      ),
                    ),
                  )
              ],
            ),
      
          )
        ],
      
      ),
    );
  }
}