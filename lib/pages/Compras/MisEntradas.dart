import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MisEntradas extends StatefulWidget {
  MisEntradas({Key key}) : super(key: key);
  static final String routeName = 'MisEntradas';
  @override
  _MisEntradasState createState() => _MisEntradasState();
}

class _MisEntradasState extends State<MisEntradas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mis Entradas',
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
      backgroundColor: HexColor('FAF6F3'),
      body: SingleChildScrollView(
        child: Column(
          children: [Ticket(),Ticket(),Ticket(),Ticket()],
        ),
      ),
    );
  }
}

class Ticket extends StatelessWidget {
  const Ticket({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 205,
           
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: Colors.white),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Text(
                                      'Pepe Guapo',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'DMSans'),
                                    ),
           
                ],),
              ),
               Container(
                margin: EdgeInsets.only(top: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Text(
                                      '9 de Julio 616,Formosa',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'DMSans'),
                                    ),
           
                ],),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                   Text(
                                      'Entrada LoungeVip',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'DMSans'),
                                    ),
           
                ],),
              ),
              Container(
                margin: EdgeInsets.only(top: 25,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 10,),
                   Text(
                                      '13:00 Lunes,15 Feb 21',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'DMSans'),
                                    ),
           
                ],),
              ),
              
            ],),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10,),bottomRight: Radius.circular(10)),
                          color: HexColor('FAF6F3'),),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(builder: (context, constrainst) {
                      return Flex(
                        children: List.generate(
                            (constrainst.constrainWidth() / 10).floor(),
                            (index) => SizedBox(
                                  height: 1,
                                  width: 5,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300),
                                  ),
                                )),
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10,),bottomLeft: Radius.circular(10)),
                          color: HexColor('FAF6F3'),),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/codigoqr2.png',),
                      
                      ),
                      )
                      ,)
                  ],),
                  Container(
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                   Text(
                                      'Una vez escaneado el codigo el acceso ya no sera valido',
                                      style: TextStyle(
                                          color: HexColor('2D2D2D'),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans'),
                                    ),
           
                ],),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: HexColor('FA503F'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                   
                  },
                  child: Text(
                    'Compartir',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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
    );
  }
}
