import 'package:candidiscocliente/Models/ListaCervezas.dart';
import 'package:candidiscocliente/Models/ListaEntradas.dart';

import 'package:candidiscocliente/Models/ListaProductos.dart';
import 'package:candidiscocliente/pages/Explorar/EstableciemientoDetalle/DetalleProducto.dart';
import 'package:candidiscocliente/pages/Explorar/Reservas/Reservas.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EstablecimientoDetalle extends StatefulWidget {
  EstablecimientoDetalle({Key key}) : super(key: key);
  static final String routeName = 'EstablecimientoDetalle';
  @override
  _EstablecimientoDetalleState createState() => _EstablecimientoDetalleState();
}

class _EstablecimientoDetalleState extends State<EstablecimientoDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(children: [
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('assets/images/bastian.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(top: 60, left: 10),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        )),
                  ]),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cine 1',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'DMSans'),
                          ),
                          SizedBox(
                            width: 240,
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200]),
                            child: Icon(
                              Icons.star_rate_rounded,
                              color: HexColor('FA503F'),
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                color: HexColor('2D2D2D'),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 17,
                            color: HexColor('757575'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Formosa,Argentina',
                            style: TextStyle(
                                color: HexColor('757575'),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'DMSans'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 13,
                            color: HexColor('757575'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Abre a las ',
                                style: TextStyle(
                                    color: HexColor('757575'),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DMSans'),
                              ),
                              Text(
                                '20:00',
                                style: TextStyle(
                                  color: HexColor('757575'),
                                  fontSize: 13,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      height: 0,
                      thickness: 1,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
              Container(
                height: 55,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ver 500 comentarios',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey[200],
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 15, left: 10),
                child: Row(
                  children: [
                    Text(
                      'Cervezas',
                      style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              CardCervezas2(),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 15, left: 10),
                child: Row(
                  children: [
                    Text(
                      'Productos',
                      style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              CardProductos2()
            ],
          ),
        ),
      ),
    );
  }
}

class CardProductos extends StatelessWidget {
  const CardProductos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: List.generate(5, (index) {
            return Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.white,
                elevation: 1,
                child: InkWell(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              margin: EdgeInsets.only(bottom: 0, left: 10),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        listaProductos[index]['img'],
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listaProductos[index]['name'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DMSans'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              listaProductos[index]['descripcion'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              listaProductos[index]['precio'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CardCervezas extends StatelessWidget {
  const CardCervezas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: List.generate(5, (index) {
            return Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.white,
                elevation: 1,
                child: InkWell(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              margin: EdgeInsets.only(bottom: 0, left: 10),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        listaCervezas[index]['img'],
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listaCervezas[index]['name'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DMSans'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              listaCervezas[index]['descripcion'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              listaCervezas[index]['precio'],
                              style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 15,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CardProductos2 extends StatelessWidget {
  const CardProductos2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: List.generate(5, (index) {
            return ListTile(
              title: Text(
                listaProductos[index]['name'],
                style: TextStyle(
                    color: HexColor('2D2D2D'),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'DMSans'),
              ),
              subtitle: Text(
                listaProductos[index]['descripcion'],
                style: TextStyle(
                    color: HexColor('757575'),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'DMSans'),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    listaProductos[index]['precio'],
                    style: TextStyle(
                      color: HexColor('2D2D2D'),
                      fontSize: 15,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, DetalleProducto.routeName);
              },
            );
          }),
        ),
      ),
    );
  }
}

class CardCervezas2 extends StatelessWidget {
  const CardCervezas2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: List.generate(5, (index) {
            return ListTile(
              title: Text(
                listaCervezas[index]['name'],
                style: TextStyle(
                    color: HexColor('2D2D2D'),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'DMSans'),
              ),
              subtitle: Text(
                listaCervezas[index]['descripcion'],
                style: TextStyle(
                    color: HexColor('757575'),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'DMSans'),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    listaCervezas[index]['precio'],
                    style: TextStyle(
                      color: HexColor('2D2D2D'),
                      fontSize: 15,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, DetalleProducto.routeName);
              },
            );
          }),
        ),
      ),
    );
  }
}

class CardEntradas extends StatelessWidget {
  const CardEntradas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 0, right: 15, top: 20),
        child: Row(
          children: List.generate(3, (index) {
            return Container(
                width: 200,
                height: 210,
                margin: EdgeInsets.only(left: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    listaEntradas[index]['img'],
                                  )),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                listaEntradas[index]['name'],
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                listaEntradas[index]['precio'],
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}

class CardUbicacion extends StatelessWidget {
  const CardUbicacion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Card(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: InkWell(
            borderRadius: BorderRadius.circular(6),
            onTap: () {},
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/mapa.png',
                          )),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mcal. Estigarribia y Avda.Avidores del Chaco 3454',
                        style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'DMSans',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Formosa,Argentina',
                        style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'DMSans',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
