import 'package:candidiscocliente/Models/ListaCervezas.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetalleDelPedido extends StatefulWidget {
  DetalleDelPedido({Key key}) : super(key: key);
  static final String routeName = 'DetalleDelPedido';
  @override
  _DetalleDelPedidoState createState() => _DetalleDelPedidoState();
}

class _DetalleDelPedidoState extends State<DetalleDelPedido> {
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
                      onPressed: () {},
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
          'Pedido',
          style: TextStyle(
              color: HexColor('2D2D2D'),
              fontSize: 16,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            width: 80,
            child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  primary: Colors.grey[600], // foreground
                ),
                onPressed: () {},
                child: Text(
                  'Editar',
                  style: TextStyle(
                      color: HexColor('2D2D2D'),
                      fontSize: 14,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
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
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/king.jpg',
                                ),
                                fit: BoxFit.fitWidth),
                            color: Colors.grey[100]),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'king Fish',
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
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Asuncion , Paraguay',
                                  style: TextStyle(
                                      color: HexColor('757575'),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'DMSans'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CardCervezas3(),
            Divider(
              indent: 20,
              height: 0,
              thickness: 0.5,
              color: HexColor('2D2D2D'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 15, right: 10),
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
                    '\$1500',
                    style: TextStyle(
                      color: HexColor('2D2D2D'),
                      fontSize: 14,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(
                    width: 1,
                    color: HexColor('FA503F'),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Añadir mas productos',
                  style: TextStyle(
                    color: HexColor('FA503F'),
                    fontSize: 14,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardCervezas3 extends StatelessWidget {
  const CardCervezas3({Key key}) : super(key: key);

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
              leading: Text(
                'x1',
                style: TextStyle(
                    color: HexColor('2D2D2D'),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
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
              onTap: () {},
            );
          }),
        ),
      ),
    );
  }
}
