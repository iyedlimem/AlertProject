// ignore_for_file: empty_statements, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dashbord.dart';
import 'addAlert.dart';
import 'settings.dart';
import 'historiqueAlert.dart' ;


class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
int _selctedindex = 0 ;

  @override
  Widget build(BuildContext context) {
    Widget page = Dashbord();
switch (_selctedindex) {
  case 0:
    page = Dashbord();
   
  case 1:
    page = AddAlert();

  case 2:
     page =  Historique();

  case 3:
  page =  Settings();
  
  default:
    UnimplementedError('no widget for $_selctedindex');
}
    return Scaffold(
     
      body: Center(
          child: page,
            ),
      bottomNavigationBar: Container(
        decoration: ShapeDecoration(
          color: Color(0xFF528265),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(13),topRight: Radius.circular(16))
          )),
        
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
          child: GNav(
            backgroundColor: Color(0xFF528265),
            color:  Colors.white,
            activeColor: const Color(0xFF528265),
            tabBackgroundColor: const Color(0xFFD9D9D9),
            padding:  EdgeInsets.all(16),
            gap:8,
            
            onTabChange: ((index){
              setState(() {
                _selctedindex = index;
              
              });;
            }),
            tabs: const [
            GButton(icon: Icons.home,text: 'Home',iconSize: 27,),
            GButton(icon: Icons.add_circle_outline,text: 'Ajouter Alerte',iconSize: 30),
            GButton(icon: Icons.list,text: 'Historique'),
            GButton(icon: Icons.person,text: 'Settings'),
            

          ]),
        ),
      ),
    );
  }
}