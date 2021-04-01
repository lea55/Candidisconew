import 'package:candidiscocliente/Models/ListaRankingBares.dart';
import 'package:candidiscocliente/Models/ListaRankingCine.dart';
import 'package:candidiscocliente/Models/listacategorias.dart';
import 'package:candidiscocliente/pages/Explorar/Buscador/BuscarPorCategoria.dart';
import 'package:candidiscocliente/pages/Explorar/DireccionPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:page_indicator/page_indicator.dart';

class Explorar extends StatefulWidget {
  Explorar({Key key}) : super(key: key);
  static final String routeName = 'Explorar';
  @override
  _ExplorarState createState() => _ExplorarState();
}

class _ExplorarState extends State<Explorar> {
  PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[100],
                  margin: EdgeInsets.only(left: 0, top: 0, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 230,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: HexColor('FA503F'),
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, DireccionPage.routeName);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.white,
                                size: 21,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Formosa,3600,Argentina',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        'Hola Leandro!',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontSize: 24,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'Empeza a adquirir tus accesos, productos de una\nmanera facil.',
                        style: TextStyle(
                            color: HexColor('757575'),
                            fontSize: 15,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0, top: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 80,
                                width: 80,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        BusquedaPorCategoria.routeName);
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  child: Icon(
                                    Icons.movie_outlined,
                                    size: 27.0,
                                    color: HexColor('FA503F'),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Cine1',
                                  style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 14,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 80,
                                width: 80,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        BusquedaPorCategoria.routeName);
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  child: Icon(
                                    Icons.fastfood_outlined,
                                    size: 27.0,
                                    color: HexColor('FA503F'),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Cine2',
                                  style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 14,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 80,
                                width: 80,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        BusquedaPorCategoria.routeName);
                                  },
                                  elevation: 2,
                                  fillColor: Colors.white,
                                  child: Icon(
                                    Icons.fastfood_outlined,
                                    size: 27.0,
                                    color: HexColor('FA503F'),
                                  ),
                                  padding: EdgeInsets.all(20.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Cine3',
                                  style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 14,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 80,
                                width: 80,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      backgroundColor: HexColor('FFFFFF'),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, right: 0, top: 30),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            height: 80,
                                                            width: 80,
                                                            child:
                                                                RawMaterialButton(
                                                              onPressed: () {
                                                                Navigator.pushNamed(
                                                                    context,
                                                                    BusquedaPorCategoria
                                                                        .routeName);
                                                              },
                                                              elevation: 2,
                                                              fillColor:
                                                                  Colors.white,
                                                              child: Icon(
                                                                Icons
                                                                    .movie_outlined,
                                                                size: 27.0,
                                                                color: HexColor(
                                                                    'FA503F'),
                                                              ),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                              'Cine1',
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '757575'),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'DMSans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20),
                                                            height: 80,
                                                            width: 80,
                                                            child:
                                                                RawMaterialButton(
                                                              onPressed: () {
                                                                Navigator.pushNamed(
                                                                    context,
                                                                    BusquedaPorCategoria
                                                                        .routeName);
                                                              },
                                                              elevation: 2,
                                                              fillColor:
                                                                  Colors.white,
                                                              child: Icon(
                                                                Icons
                                                                    .fastfood_outlined,
                                                                size: 27.0,
                                                                color: HexColor(
                                                                    'FA503F'),
                                                              ),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                              'Cine2',
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '757575'),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'DMSans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20),
                                                            height: 80,
                                                            width: 80,
                                                            child:
                                                                RawMaterialButton(
                                                              onPressed: () {
                                                                Navigator.pushNamed(
                                                                    context,
                                                                    BusquedaPorCategoria
                                                                        .routeName);
                                                              },
                                                              elevation: 2,
                                                              fillColor:
                                                                  Colors.white,
                                                              child: Icon(
                                                                Icons
                                                                    .fastfood_outlined,
                                                                size: 27.0,
                                                                color: HexColor(
                                                                    'FA503F'),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          20.0),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                              'Cine3',
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '757575'),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'DMSans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  elevation: 1,
                                  fillColor: Colors.white,
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 27.0,
                                    color: HexColor('FA503F'),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Mas',
                                  style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 14,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cine2',
                              style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DMSans',
                                fontSize: 24,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 140,
                              child: TextButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Mostrar todos',
                                      style: TextStyle(
                                        color: HexColor('FA503F'),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'DMSans',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 16,
                                      color: HexColor('FA503F'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CardCategoriasBares(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cines',
                              style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DMSans',
                                fontSize: 24,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 140,
                              child: TextButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Mostrar todos',
                                      style: TextStyle(
                                        color: HexColor('FA503F'),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'DMSans',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 16,
                                      color: HexColor('FA503F'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CardCategoriasCines(),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardCategorias extends StatelessWidget {
  const CardCategorias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 15, top: 30),
        child: Row(
          children: List.generate(3, (index) {
            return Container(
                width: 300,
                height: 250,
                margin: EdgeInsets.only(left: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.pushNamed(
                          context, BusquedaPorCategoria.routeName);
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    listacategorias[index]['img'],
                                  )),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                listacategorias[index]['name'],
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
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

class CardCategoriasBares extends StatelessWidget {
  const CardCategoriasBares({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 15, top: 15, bottom: 20),
        child: Row(
          children: List.generate(5, (index) {
            return Container(
                width: 300,
                height: 310,
                margin: EdgeInsets.only(left: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    listaRankingBares[index]['img'],
                                  )),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listaRankingBares[index]['name'],
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
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
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DMSans'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 12),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    size: 13,
                                    color: HexColor('757575'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Abre a las ',
                                    style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'DMSans'),
                                  ),
                                  Text(
                                    '20:00',
                                    style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 11,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
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

class CardCategoriasCines extends StatelessWidget {
  const CardCategoriasCines({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 15, top: 20, bottom: 20),
        child: Row(
          children: List.generate(2, (index) {
            return Container(
                width: 300,
                height: 310,
                margin: EdgeInsets.only(left: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    listaRankingCines[index]['img'],
                                  )),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listaRankingCines[index]['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
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
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
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
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DMSans'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 12),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    size: 13,
                                    color: HexColor('757575'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Abre a las ',
                                    style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'DMSans'),
                                  ),
                                  Text(
                                    '20:00',
                                    style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 11,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
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
