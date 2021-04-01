import 'package:candidiscocliente/Models/ListaEstablecimientos.dart';
import 'package:candidiscocliente/pages/Explorar/EstableciemientoDetalle/EstablecimientoDetalle.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BusquedaPorCategoria extends StatefulWidget {
  BusquedaPorCategoria({Key key}) : super(key: key);
  static final String routeName = 'BusquedaPorCategoria';
  @override
  _BusquedaPorCategoriaState createState() => _BusquedaPorCategoriaState();
}

class _BusquedaPorCategoriaState extends State<BusquedaPorCategoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back,
            color: HexColor('2D2D2D'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(
          Icons.location_pin,
          color: HexColor('056A4A'),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white,
                  onPrimary: Colors.black.withOpacity(0.1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Buscar cervecerias',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 135,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      splashRadius: 20,
                      icon: Icon(Icons.hdr_strong_outlined),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10, bottom: 20),
              child: Row(
                children: [
                  Text(
                    '400 Cervecerias',
                    style: TextStyle(
                      color: HexColor('2D2D2D'),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DMSans',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 0), child: CardEstablecimientos())
          ],
        ),
      ),
    );
  }
}

class CardEstablecimientos extends StatelessWidget {
  const CardEstablecimientos({Key key}) : super(key: key);

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
              height: 180,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                elevation: 2,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Navigator.pushNamed(
                        context, EstablecimientoDetalle.routeName);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 0, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listaEstablecimientos[index]['name'],
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DMSans'),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Formosa,Argentina',
                                    style: TextStyle(
                                        color: HexColor('757575'),
                                        fontSize: 12,
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
                            SizedBox(
                              height: 20,
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
                                      fontSize: 15,
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
                          width: 180,
                          height: 140,
                          margin: EdgeInsets.only(top: 15, right: 20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    listaEstablecimientos[index]['img'],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20))),
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
