import 'package:candidiscocliente/Models/ListaEstablecimientos.dart';
import 'package:candidiscocliente/Models/ListaRankingBares.dart';
import 'package:candidiscocliente/pages/Compras/ProductosCompras.dart';
import 'package:candidiscocliente/pages/Explorar/EstableciemientoDetalle/EstablecimientoDetalle.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Compras extends StatefulWidget {
  Compras({Key key}) : super(key: key);
  static final String routeName = 'Compras';
  @override
  _ComprasState createState() => _ComprasState();
}

class _ComprasState extends State<Compras> {
  @override
  Widget build(BuildContext context) {
   
     return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          
          SliverPersistentHeader(
            delegate: _EffectNavbar(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: CardEstablecimietosCompras())
              ],
            ),
          )
        ],
      ),
    );
  }
}
 

 const _maxHeaderExtent = 130.0;
const _minHeaderExtent = 100.0;

const _maxSizeText = 25.0;
const _minSizeText = 16.0;

class _EffectNavbar extends SliverPersistentHeaderDelegate {
   

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxHeaderExtent;
    final currentSizeText = (_maxSizeText * (1 - percent)).clamp(_minSizeText,_maxSizeText);
    return Container(
      decoration: BoxDecoration(color:Colors.white,boxShadow: [
        BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius:3,
        offset: Offset(0, 3), // changes position of shadow
      ),
      ],),
      
      child: Stack(
        children:<Widget>[
         
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Row(
              children: [
                
                Text(
                  'Compras',
                  style: TextStyle(
                      fontSize: currentSizeText,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _maxHeaderExtent;

  @override
  // TODO: implement minExtent
  double get minExtent => _minHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}


class CardEstablecimietosCompras extends StatelessWidget {
  const CardEstablecimietosCompras({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          
          children: List.generate(5, (index) {
            return Column(
              children: [
                
                Container(
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
                            context, ProductosCompras.routeName);
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
                                            '28/02/21,',
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
                                        Icons.credit_card,
                                        color: HexColor('FA503F'),
                                        size: 18,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Tarjeta de credito',
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
                ),
                SizedBox(height: 10,)
              ],
            );
          }),
        ),
      ),
    );
  }
}
