
import 'package:candidiscocliente/pages/Explorar/Direccion/BuscarDireccion.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DireccionPage extends StatefulWidget {
  DireccionPage({Key key}) : super(key: key);
  static final String routeName = 'DireccionPage';
  @override
  _DireccionPageState createState() => _DireccionPageState();
}

class _DireccionPageState extends State<DireccionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        centerTitle: false,
        leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Ubicacion',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Mi ubicacion actual',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                  size: 20,
                ),
                onTap: () {},
              ),
            ),
            Divider(
              indent: 20,
              height: 0,
              thickness: 0.5,
              color: HexColor('1D2236'),
            ),
            Container(
              height: 60,
              child: ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Buscar por tu direccion',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 17,
                ),
                leading: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 20,
                ),
                onTap: () {
                  Navigator.pushNamed(context, BuscarDireccionPage.routeName);
                },
              ),
            ),
            Divider(
              indent: 20,
              height: 0,
              thickness: 0.5,
              color: HexColor('1D2236'),
            ),
          ],
        ),
      ),
    );
  }
}
