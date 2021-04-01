import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Cuidad extends StatefulWidget {
  Cuidad({Key key}) : super(key: key);
  static final String routeName = 'Cuidad';
  @override
  _CuidadState createState() => _CuidadState();
}

class _CuidadState extends State<Cuidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
        preferredSize: const Size.fromHeight(128.0),
        child: Column(
          children: [
            
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: AppBarContent(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(child: Column(children: [
       Container(
              height: 60,
              child: ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Argentina',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 17,
                ),
                
                onTap: () {
                 
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                          'F',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                ],
              ),
            ),
                
            Container(
              height: 60,
              child: ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Formosa',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                
                
                onTap: () {
                 
                },
              ),
            ),
      ],),)
    );
  }
}


class AppBarContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: IconButton(
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
          'Elegir Cuidad',
          style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
        ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10,top: 10 ),
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                
                    borderRadius: BorderRadius.circular(50)),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    prefixIcon:  Icon(Icons.search),
                  
                    hintText: 'Buscar cuidad...',
                    
                    
                    
                    labelStyle: TextStyle(color: Colors.black,fontFamily: 'DMSans'),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                )),
            ],
          ),
        ),
      ],
    );
  }
}