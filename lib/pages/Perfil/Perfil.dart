import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Perfil extends StatefulWidget {
  Perfil({Key key}) : super(key: key);
  static final String routeName = 'Perfil';
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: SizedBox(
                height: 135,
                width: 135,
                child: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/bro.jpg'),),
                Positioned(
                  right: -12,
                  bottom: 0,
                  child: SizedBox(height: 50,width: 50,child: Container(
                                   
                                      
                                
                                          child: RawMaterialButton(

                                            onPressed: (){
                                          
                                            },
                                            elevation: 2,
                                            fillColor:Colors.white,
                                            child: Icon(
                                              Icons.camera_alt_outlined,
                                              size: 20.0,
                                              color: HexColor('FA503F'),
                                            ),
                                           shape: CircleBorder(),
                                           
                                          ),
                                          
                                        ),),
                )
              ],),),
            ),
          ),
          Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Leandro Velazquez',style: TextStyle(color: HexColor('2D2D2D'),fontFamily: 'DMSans',fontSize: 22,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'lea-94@live.com.ar',style: TextStyle(color: HexColor('757575'),fontFamily: 'DMSans',fontSize: 14,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),

                CardInfo(),
                CardLegal(),
                CardSetting()

                

        ],
      ),
    ));
  }
}



class CardInfo extends StatelessWidget {
  const CardInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child:  Container(
        margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                width: MediaQuery.of(context).size.width,
                height: 176,
               
                child: Card(
                  
                  color: Colors.white,
                  elevation:2,
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    
                    borderRadius: BorderRadius.circular(10),
                    
                    child: Column(
                      children: [
                        
                       Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Cuenta',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.person_outline,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                Divider(color: Colors.grey[300],height: 0,indent: 20,endIndent: 20,thickness: 1,),
                Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                   
                    title: Container(
                      
                      child: Text(
                        'Moneda local',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.attach_money_sharp,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                Divider(color: Colors.grey[300],height: 0,indent: 20,endIndent: 20,thickness: 1,),
                

                Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Notificaciones',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.notifications_outlined,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                
                
                      ],
                    ),
                  ),
         )) );

          
        
      
    
  }
}

class CardSetting extends StatelessWidget {
  const CardSetting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child:  Container(
        margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                width: MediaQuery.of(context).size.width,
                height: 120,
               
                child: Card(
                  
                  color: Colors.white,
                  elevation:2,
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    
                    borderRadius: BorderRadius.circular(10),
                    
                    child: Column(
                      children: [
                        
                       Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Cambiar Cuenta',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.people_alt_outlined,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                Divider(color: Colors.grey[300],height: 0,indent: 20,endIndent: 20,thickness: 1,),
                

                Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Cerrar sesion',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.power_settings_new,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                
                
                      ],
                    ),
                  ),
         )) );

          
        
      
    
  }
}


class CardLegal extends StatelessWidget {
  const CardLegal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child:  Container(
        margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                width: MediaQuery.of(context).size.width,
                height: 120,
               
                child: Card(
                  
                  color: Colors.white,
                  elevation:2,
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    
                    borderRadius: BorderRadius.circular(10),
                    
                    child: Column(
                      children: [
                        
                       Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Terminos y condiciones',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.text_snippet_outlined,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                Divider(color: Colors.grey[300],height: 0,indent: 20,endIndent: 20,thickness: 1,),
                

                Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      
                 
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                    title: Container(
                      
                      child: Text(
                        'Politicas de privacidad',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w600,
                          color: HexColor('2D2D2D'),
                        ),
                      ),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 5),
                      child:Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor('757575'),
                        size: 17,
                      ), 
                    ),
                    leading:  Icon(
                        Icons.security_outlined,
                        color: HexColor('FA503F'),
                        size: 21,
                      ),
                      onTap: (){},
                      
                      )
                      
                      ),
                
                
                      ],
                    ),
                  ),
         )) );

          
        
      
    
  }
}