import 'package:candidiscocliente/pages/Explorar/DetalleDelPedido/DetalleDelPedido.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MetodosDePagos extends StatefulWidget {
  MetodosDePagos({Key key}) : super(key: key);
  static final String routeName = 'MetodosDePagos';
  @override
  _MetodosDePagosState createState() => _MetodosDePagosState();
}

class _MetodosDePagosState extends State<MetodosDePagos> {
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
                        Navigator.pushNamed(
                            context, DetalleDelPedido.routeName);
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
          'Metodos de pagos',
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
              margin: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Metodos online',
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
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 15, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/mercadopago.png',
                                        ),
                                        fit: BoxFit.fitWidth),
                                    color: Colors.grey[100]),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Text(
                                'Mercado Pago',
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 15, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/tarjeta.png',
                                        ),
                                        fit: BoxFit.fitWidth),
                                    color: Colors.grey[100]),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Tarjeta de credito',
                                style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
