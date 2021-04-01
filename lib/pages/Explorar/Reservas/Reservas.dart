import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'DetalleReserva.dart';

class Reservas extends StatefulWidget {
  Reservas({Key key}) : super(key: key);
  static final String routeName = 'Reservas';
  @override
  _ReservasState createState() => _ReservasState();
}

class _ReservasState extends State<Reservas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Column(
          children: [
            Divider(
              height: 0,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: HexColor('FA503F'),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, DetalleReservas.routeName);
                      },
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Reservas',
          style: TextStyle(
              color: HexColor('2D2D2D'),
              fontSize: 16,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          splashRadius: 22,
          icon: Icon(
            Icons.arrow_back,
            color: HexColor('2D2D2D'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Elijamos ¿Cuantas personas van a asistir?',
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Recorda que por protocolo aceptamos un maximo de\n5 personas',
                              style: TextStyle(
                                  color: HexColor('757575'),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 30),
                            width: 50,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: HexColor('FA503F'),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.grey[100],
                                  fontSize: 14,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 30),
                            height: 50,
                            width: 50,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  side: BorderSide(
                                    width: 1,
                                    color: HexColor('2D2D2D'),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 14,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 30),
                            height: 50,
                            width: 50,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  side: BorderSide(
                                    width: 1,
                                    color: HexColor('2D2D2D'),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 14,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 30),
                            height: 50,
                            width: 50,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  side: BorderSide(
                                    width: 1,
                                    color: HexColor('2D2D2D'),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '8',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 14,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            Text(
                              '2 Personas',
                              style: TextStyle(
                                  color: HexColor('FA503F'),
                                  fontSize: 14,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Selecciona el dia que prefieras',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 16,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Podes reservas con un plazo maximo de 15 dias',
                    style: TextStyle(
                        color: HexColor('757575'),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'DMSans'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  width: 50,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: HexColor('FA503F'),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Lu',
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 10,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 14,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  height: 100,
                  width: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(
                          width: 1,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Ma',
                            style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 10,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '4',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 14,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  height: 100,
                  width: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(
                          width: 1,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Mie',
                            style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 10,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '8',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 14,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  height: 100,
                  width: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(
                          width: 1,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Jue',
                            style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 10,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '9',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 14,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  height: 100,
                  width: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(
                          width: 1,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Vie',
                            style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 10,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '4',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 14,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  Text(
                    'Lunes 2/02',
                    style: TextStyle(
                        color: HexColor('FA503F'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
