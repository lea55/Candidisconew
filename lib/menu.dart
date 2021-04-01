import 'package:candidiscocliente/pages/Compras/Compras.dart';
import 'package:candidiscocliente/pages/Explorar/Explorar.dart';
import 'package:candidiscocliente/pages/Guardados/Guardados.dart';

import 'package:candidiscocliente/pages/Perfil/Perfil.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Menu extends StatefulWidget {
  static final String routeName = 'MenuPrincipal';
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchScreen(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: HexColor('757575'),
        unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontFamily: 'DMSans'),
        selectedItemColor: HexColor('FA503F'),
        selectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
            fontFamily: 'DMSans'),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.save_alt_outlined), label: 'Guardados'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Compras'),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  switchScreen(int currentIndex) {
    switch (_currentIndex) {
      case 0:
        return new Explorar();
        break;
      case 1:
        return new Guardados();
        break;
      case 2:
        return new Compras();
        break;
      
      case 3:
        return new Perfil();
        break;
    }
  }
}
