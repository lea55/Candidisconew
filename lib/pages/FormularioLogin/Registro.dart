import 'package:candidiscocliente/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:hexcolor/hexcolor.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);
  static final String routeName = 'RegistroPage';
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    bool isChecked2 = true;
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
                  padding: EdgeInsets.only(top: 20,left: 15),
                  child: Row(
                    children: [
                      Text(
                          'Informacion Personal',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 19,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Container(
                margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                height: 70,
                
                child: TextFormField(
                  style: TextStyle(
                      color: HexColor('2D2D2D'), fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    
                    labelText: 'Nombre',
                    labelStyle: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 14),
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
                    
                    labelText: 'Apellido',
                    labelStyle: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 14),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('757575'),width: 0.5)),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('FA503F'),width: 1)),
                    hintStyle: TextStyle(color: Colors.grey[100]),
                  ),
                )),

                Container(
                  padding: EdgeInsets.only(top: 20,left: 15),
                  child: Row(
                    children: [
                      Text(
                          'Seguridad',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 19,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
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
                margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                height: 70,
                
                child: TextFormField(
                  style: TextStyle(
                      color: HexColor('2D2D2D'), fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    
                    labelText: 'Confirmar contraseña',
                    labelStyle: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 14),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('757575'),width: 0.5)),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: HexColor('FA503F'),width: 1)),
                    hintStyle: TextStyle(color: Colors.grey[100]),
                  ),
                )),
                Container(
                  padding: EdgeInsets.only(top: 25,left: 15),
                  child: Row(
                    children: [
                      Text(
                          'Terminos y Condiciones',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 19,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      GFCheckbox(
        size: GFSize.SMALL,
        activeBgColor: HexColor('FA503F'),
        type: GFCheckboxType.circle,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        },
        value: isChecked,
        inactiveIcon: null,
      ),
      SizedBox(width: 20,),
      Text(
                            'Deseo recibir novedades sobre productos y\npromociones',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 14,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 50),
                  child: Row(
                    children: [
                      Container(
                        
                        width: 150,
                        height: 45,
                        child:  TextButton(
                            style: TextButton.styleFrom(
                            
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                           
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               
                                Text(
                          'Terminos de uso',
                          style: TextStyle(
                                  color: HexColor('FA503F'),
                                  fontSize: 14,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                        ),
                        
                              ],
                            ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      GFCheckbox(
        size: GFSize.SMALL,
        activeBgColor: HexColor('FA503F'),
        type: GFCheckboxType.circle,
        onChanged: (value) {
          setState(() {
            isChecked2 = value;
          });
        },
        value: isChecked2,
        inactiveIcon: null,
      ),
      SizedBox(width: 20,),
      Text(
                            'Acepto los terminos y condiciones y declaro\nser mayor de 18 años.',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 14,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.only(top: 25,left: 15),
                  child: Row(
                    children: [
                      Text(
                          'Politicas de privacidad',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 19,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,left: 15),
                  child: Row(
                    children: [
                      Text(
                                  'Por favor lea nuestro Aviso de privacidad para mas informacion.',style: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 13,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10),
                  child: Row(
                    children: [
                      Container(
                        
                        width: 170,
                        height: 45,
                        child:  TextButton(
                            style: TextButton.styleFrom(
                            
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                           
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               
                                Text(
                          'Politicas de privacidad',
                          style: TextStyle(
                                  color: HexColor('FA503F'),
                                  fontSize: 14,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                        ),
                        
                              ],
                            ),),
                      ),
                    ],
                  ),
                ),   
                Container(
                  margin: EdgeInsets.only(right: 20,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        
                        width: 160,
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
                          'Registrate',
                          style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                        ),
                        
                              ],
                            ),),
                      ),
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
                  'Registrate',
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
