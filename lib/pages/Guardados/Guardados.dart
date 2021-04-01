

import 'package:candidiscocliente/Models/ListaRankingBares.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Guardados extends StatefulWidget {
  Guardados({Key key}) : super(key: key);
  static final String routeName = 'Guardados';
  @override
  _GuardadosState createState() => _GuardadosState();
}

class _GuardadosState extends State<Guardados> {
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
                
                CardCategoriasBares4()
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
      decoration: BoxDecoration(color: Colors.white,boxShadow: [
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
                  'Guardados',
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


class CardCategoriasBares4 extends StatelessWidget {
  const CardCategoriasBares4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 20,left: 15,right: 15),
        child:Column(
          children: List.generate(5, (index) {
            return Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 310,
                   
                    child: Card(
                      color: Colors.white,
                      elevation:2,
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
                              height: 180,
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
                    ),
                  
                    ),
                  SizedBox(height: 20,),
              ],
            );
          }),
        ),
      ),
    );
  }
}

