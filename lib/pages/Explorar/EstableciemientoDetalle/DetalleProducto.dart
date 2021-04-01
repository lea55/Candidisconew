import 'package:candidiscocliente/pages/Explorar/MetodosDePagos/MetodosDePagos.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetalleProducto extends StatefulWidget {
  DetalleProducto({Key key}) : super(key: key);
  static final String routeName = 'DetalleProducto';
  @override
  _DetalleProductoState createState() => _DetalleProductoState();
}

class _DetalleProductoState extends State<DetalleProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.grey[200],
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
                        Navigator.pushNamed(context, MetodosDePagos.routeName);
                      },
                      child: Text(
                        'Total a pagar (\$200)',
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(children: [
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('assets/images/amber.jpg'),
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
                      margin: EdgeInsets.only(top: 25, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Patagonia Amber Laguer 750ml',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DMSans'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$160',
                            style: TextStyle(
                                color: HexColor('2D2D2D'),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'DMSans'),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      thickness: 9,
                      color: Colors.grey[200],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 30, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Cantidad',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'DMSans',
                              color: HexColor('2D2D2D'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 30),
                          height: 55,
                          width: 55,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                side: BorderSide(
                                  width: 1,
                                  color: HexColor('FA503F'),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.remove,
                                color: HexColor('FA503F'),
                              )),
                        ),
                        SizedBox(
                          width: 10,
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
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 30),
                          height: 55,
                          width: 55,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                side: BorderSide(
                                  width: 1,
                                  color: HexColor('FA503F'),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                color: HexColor('FA503F'),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
