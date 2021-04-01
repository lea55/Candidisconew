import 'package:candidiscocliente/menu.dart';
import 'package:candidiscocliente/pages/FormularioLogin/Principal.dart';
import 'package:candidiscocliente/pages/FormularioLogin/Registro.dart';
import 'package:candidiscocliente/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent,systemNavigationBarColor: Colors.grey[100],systemNavigationBarDividerColor: Colors.black,systemNavigationBarIconBrightness: Brightness.dark));
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: HexColor('FBFAFC'),
  //     statusBarIconBrightness: Brightness.light,

  //     systemNavigationBarIconBrightness: Brightness.light));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: PrincipalPage.routeName,
      theme: ThemeData(
          
          textSelectionTheme: TextSelectionThemeData(
              selectionColor: Colors.white,
              cursorColor: Colors.white,
              selectionHandleColor: Colors.white),
          disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
    );
  }
}
