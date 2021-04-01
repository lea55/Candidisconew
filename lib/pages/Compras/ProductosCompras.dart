import 'package:candidiscocliente/Models/ListaEstablecimientos.dart';
import 'package:candidiscocliente/pages/Compras/DetalleCompra.dart';
import 'package:candidiscocliente/pages/Compras/MisEntradas.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductosCompras extends StatefulWidget {
  ProductosCompras({Key key}) : super(key: key);
  static final String routeName = 'ProductosCompras';
  @override
  _ProductosComprasState createState() => _ProductosComprasState();
}

class _ProductosComprasState extends State<ProductosCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sombrero Joint',
          style: TextStyle(
              color: HexColor('2D2D2D'),
              fontSize: 16,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
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
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag,
          color: HexColor('FA503F'),
        ),
        backgroundColor: HexColor('2D2D2D'),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Material(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      'Detalle de la compra',
                      style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontSize: 15,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: HexColor('2D2D2D'),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, DetalleCompra.routeName);
                    },
                  ),
                )),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Material(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      'Mis entradas',
                      style: TextStyle(
                          color: HexColor('2D2D2D'),
                          fontSize: 15,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: HexColor('2D2D2D'),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, MisEntradas.routeName);
                    },
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            CardProductosRetiros()
          ],
        ),
      ),
    );
  }
}

class CardProductosRetiros extends StatelessWidget {
  const CardProductosRetiros({Key key}) : super(key: key);

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
              height: 240,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                elevation: 2,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Entrada cine 1',
                                    style: TextStyle(
                                        color: HexColor('2D2D2D'),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'DMSans'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Vip',
                                    style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'DMSans'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 1.0,
                                    fillColor: HexColor('FA503F'),
                                    child: Icon(
                                      Icons.remove,
                                      size: 18.0,
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.all(18.0),
                                    shape: CircleBorder(),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'DMSans',
                                          color: HexColor('2D2D2D'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 1.0,
                                    fillColor: HexColor('FA503F'),
                                    child: Icon(
                                      Icons.add,
                                      size: 18.0,
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.all(18.0),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20, top: 30),
                                    height: 40,
                                    width: 100,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          side: BorderSide(
                                            width: 1,
                                            color: HexColor('FA503F'),
                                          ),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 800,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Solicitar',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    'FA503F'),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'DMSans'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20),
                                                          child: Text(
                                                            'En que barrio vives',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    'FA503F'),
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    'DMSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      child: RawMaterialButton(
                                                        onPressed: () {},
                                                        elevation: 1.0,
                                                        fillColor:
                                                            HexColor('FA503F'),
                                                        child: Icon(
                                                          Icons.arrow_forward,
                                                          size: 18.0,
                                                          color: Colors.white,
                                                        ),
                                                        padding: EdgeInsets.all(
                                                            18.0),
                                                        shape: CircleBorder(),
                                                      ),
                                                    ),
                                                  ]),
                                                );
                                              });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Solicitar',
                                              style: TextStyle(
                                                  color: HexColor('FA503F'),
                                                  fontSize: 14,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20, top: 30),
                                    height: 40,
                                    width: 100,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          side: BorderSide(
                                            width: 1,
                                            color: HexColor('FA503F'),
                                          ),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 800,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Retirar',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    'FA503F'),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'DMSans'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 160,
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 20),
                                                      child: RawMaterialButton(
                                                        onPressed: () {},
                                                        elevation: 1.0,
                                                        fillColor:
                                                            HexColor('FA503F'),
                                                        child: Icon(
                                                          Icons.arrow_forward,
                                                          size: 18.0,
                                                          color: Colors.white,
                                                        ),
                                                        padding: EdgeInsets.all(
                                                            18.0),
                                                        shape: CircleBorder(),
                                                      ),
                                                    ),
                                                  ]),
                                                );
                                              });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Cupon',
                                              style: TextStyle(
                                                  color: HexColor('FA503F'),
                                                  fontSize: 14,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
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
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CardQrRetiros extends StatelessWidget {
  const CardQrRetiros({Key key}) : super(key: key);

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
              height: 240,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                elevation: 0.8,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cerveza Patagonia Amber Laguer',
                                    style: TextStyle(
                                        color: HexColor('2D2D2D'),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'DMSans'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    '730ml',
                                    style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'DMSans'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 1.0,
                                    fillColor: HexColor('FA503F'),
                                    child: Icon(
                                      Icons.remove,
                                      size: 18.0,
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.all(18.0),
                                    shape: CircleBorder(),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'DMSans',
                                          color: HexColor('2D2D2D'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 1.0,
                                    fillColor: HexColor('FA503F'),
                                    child: Icon(
                                      Icons.add,
                                      size: 18.0,
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.all(18.0),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20, top: 30),
                                    height: 40,
                                    width: 100,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          side: BorderSide(
                                            width: 1,
                                            color: HexColor('056A4A'),
                                          ),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 800,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Retirar',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    '056A4A'),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'DMSans'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20,
                                                          top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Generar cupon',
                                                            style: TextStyle(
                                                                color: HexColor(
                                                                    '2D2D2D'),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontFamily:
                                                                    'DMSans'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 0),
                                                      child: RawMaterialButton(
                                                        onPressed: () {},
                                                        elevation: 1.0,
                                                        fillColor:
                                                            HexColor('056A4A'),
                                                        child: Icon(
                                                          Icons.arrow_forward,
                                                          size: 18.0,
                                                          color: Colors.white,
                                                        ),
                                                        padding: EdgeInsets.all(
                                                            18.0),
                                                        shape: CircleBorder(),
                                                      ),
                                                    ),
                                                  ]),
                                                );
                                              });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Solicitar',
                                              style: TextStyle(
                                                  color: HexColor('056A4A'),
                                                  fontSize: 14,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20, top: 30),
                                    height: 40,
                                    width: 100,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          side: BorderSide(
                                            width: 1,
                                            color: HexColor('056A4A'),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Cupon',
                                              style: TextStyle(
                                                  color: HexColor('056A4A'),
                                                  fontSize: 14,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )),
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
              ),
            );
          }),
        ),
      ),
    );
  }
}
