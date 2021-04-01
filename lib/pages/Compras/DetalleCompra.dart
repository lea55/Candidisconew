import 'package:candidiscocliente/Models/ListaEstablecimientos.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetalleCompra extends StatefulWidget {
  DetalleCompra({Key key}) : super(key: key);
  static final String routeName = 'DetalleCompra';
  @override
  _DetalleCompraState createState() => _DetalleCompraState();
}

class _DetalleCompraState extends State<DetalleCompra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
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
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Material(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Detalle Compra',
                          style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 20,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )),
                
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'x1 Cerveza Patagonia Amber Laguer ',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 15,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                '    1000',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'x5 Cerveza Patagonia Golden ',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 15,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '300',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'x1 Cerveza Imperial ',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 15,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '900',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'x3 Cerveza Miller',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 15,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '700',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'x10 Cerveza Imperial IPA ',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 15,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '500',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Divider(
              height: 35,
              thickness: 1,
              indent: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '5000',
                    style: TextStyle(
                        color: HexColor('2D2D2D'),
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
