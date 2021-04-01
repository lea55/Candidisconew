
import 'package:candidiscocliente/pages/Explorar/Direccion/Cuidad.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BuscarDireccionPage extends StatefulWidget {
  BuscarDireccionPage({Key key}) : super(key: key);
  static final String routeName = 'BuscarDireccionPage';
  @override
  _BuscarDireccionPageState createState() => _BuscarDireccionPageState();
}

class _BuscarDireccionPageState extends State<BuscarDireccionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        centerTitle: false,
        leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Buscar Direccion',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CardFormDireccion(),
             Container(
            margin: EdgeInsets.only(top: 35,left: 15,right: 15),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.redAccent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {
                 
                },
                child: Text(
              'Buscar',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.bold),
            ),),
          ),
          ],
        ),
      ),
    );
  }
}


class CardFormDireccion extends StatelessWidget {
  const CardFormDireccion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        
        child:  Container(
          margin: EdgeInsets.only(left: 10,right: 10),
                width: MediaQuery.of(context).size.width,
           height: 180,
   
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, Cuidad.routeName);
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20,right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                    'Cuidad',
                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_drop_down,color: Colors.black,size: 18,)
                                    ],
                                  ),),
                  Container(margin: EdgeInsets.only(left: 10,right: 10),
                    child: Divider(height: 30,color: Colors.black,thickness: 1,indent: 10,endIndent: 10,))
                                ],
                              ),
                            ),
                          ),
                        
                        Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                height: 55,
                
                child: TextFormField(
                  
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0),
                    labelText: 'Calle y numero de puerta',
                  
                    labelStyle: TextStyle(color: Colors.black,fontFamily: 'DMSans'),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                )),  
               
                        
                        
                      ],
                    ),
                  )
                
          ),
        ),
        
      
    );
  }
}