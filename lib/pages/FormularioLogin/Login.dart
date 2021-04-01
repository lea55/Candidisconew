import 'package:candidiscocliente/menu.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  static final String routeName = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: Container(
                        
                        width: 130,
                        height: 55,
                        child:  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                             primary: HexColor('FA503F'),
                              elevation: 0,
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                             Navigator.pushNamed(
     context, Menu.routeName);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 
                                Text(
                          'Ingresar',
                          style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                        ),
                        
                              ],
                            ),),
                      ),
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
                margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                height: 70,
                
                child: TextFormField(
                  style: TextStyle(
                      color: HexColor('2D2D2D'), fontWeight: FontWeight.w400,fontFamily: 'DMSans'),
                  decoration: InputDecoration(
                   
                    labelText: 'Correo electronico',
                    labelStyle: TextStyle(color:  HexColor('757575'),fontFamily: 'DMSans',fontSize: 14),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('757575'),width: 0.5)),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('FA503F'),width: 1)),
                    hintStyle: TextStyle(color: Colors.grey[100]),
                  ),
                )),
                Container(
                margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                height: 70,
                
                child: TextFormField(
                  style: TextStyle(
                      color: HexColor('2D2D2D'), fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 14),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('757575'),width: 0.5)),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('FA503F'),width: 1)),
                    hintStyle: TextStyle(color: Colors.grey[100]),
                  ),
                )),
                Container(
                  margin: EdgeInsets.only(top: 15,left: 15),
                  child: Row(
                    children: [
                      Text(
                                  'Olvide mi contraseña?',style: TextStyle(color: HexColor('FA503F'),fontFamily: 'DMSans',fontSize: 14,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

const _maxHeaderExtent = 140.0;
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
            bottom: 10.0,
            left: 5.0,
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
                  Navigator.pop(context);
                },),
                Text(
                  'Iniciar sesion',
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
