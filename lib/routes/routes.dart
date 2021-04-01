import 'package:candidiscocliente/menu.dart';
import 'package:candidiscocliente/pages/Compras/Compras.dart';
import 'package:candidiscocliente/pages/Compras/DetalleCompra.dart';
import 'package:candidiscocliente/pages/Compras/MisEntradas.dart';
import 'package:candidiscocliente/pages/Compras/ProductosCompras.dart';
import 'package:candidiscocliente/pages/Explorar/Buscador/BuscarPorCategoria.dart';
import 'package:candidiscocliente/pages/Explorar/DetalleDelPedido/DetalleDelPedido.dart';
import 'package:candidiscocliente/pages/Explorar/Direccion/BuscarDireccion.dart';
import 'package:candidiscocliente/pages/Explorar/Direccion/Cuidad.dart';
import 'package:candidiscocliente/pages/Explorar/DireccionPage.dart';
import 'package:candidiscocliente/pages/Explorar/EstableciemientoDetalle/DetalleProducto.dart';
import 'package:candidiscocliente/pages/Explorar/EstableciemientoDetalle/EstablecimientoDetalle.dart';
import 'package:candidiscocliente/pages/Explorar/Explorar.dart';
import 'package:candidiscocliente/pages/Explorar/MetodosDePagos/MetodosDePagos.dart';
import 'package:candidiscocliente/pages/Explorar/Reservas/DetalleReserva.dart';
import 'package:candidiscocliente/pages/Explorar/Reservas/Reservas.dart';
import 'package:candidiscocliente/pages/FormularioLogin/Login.dart';
import 'package:candidiscocliente/pages/FormularioLogin/Principal.dart';
import 'package:candidiscocliente/pages/FormularioLogin/Registro.dart';
import 'package:candidiscocliente/pages/Guardados/Guardados.dart';

import 'package:candidiscocliente/pages/Perfil/Perfil.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
//Menu Principal
  Explorar.routeName: (BuildContext context) => Explorar(),
  Guardados.routeName: (BuildContext context) => Guardados(),
  Compras.routeName: (BuildContext context) => Compras(),
  Perfil.routeName: (BuildContext context) => Perfil(),
  
PrincipalPage.routeName: (BuildContext context) => PrincipalPage(),
LoginPage.routeName: (BuildContext context) => LoginPage(),
  RegistroPage.routeName: (BuildContext context) => RegistroPage(),
  Menu.routeName: (BuildContext context) => Menu(),

  //Busqueda
  BusquedaPorCategoria.routeName: (BuildContext context) =>
      BusquedaPorCategoria(),

  //Establecimiento
  EstablecimientoDetalle.routeName: (BuildContext context) =>
      EstablecimientoDetalle(),
  DetalleProducto.routeName: (BuildContext context) => DetalleProducto(),

  //Metodos de Pagos
  MetodosDePagos.routeName: (BuildContext context) => MetodosDePagos(),
  //Detalle del pedido
  DetalleDelPedido.routeName: (BuildContext context) => DetalleDelPedido(),

  //Reservas
  Reservas.routeName: (BuildContext context) => Reservas(),
  DetalleReservas.routeName: (BuildContext context) => DetalleReservas(),

  //Compras
  ProductosCompras.routeName: (BuildContext context) => ProductosCompras(),
  DetalleCompra.routeName: (BuildContext context) => DetalleCompra(),
  MisEntradas.routeName: (BuildContext context) => MisEntradas(),
  //Direccion
  DireccionPage.routeName: (BuildContext context) => DireccionPage(),
  Cuidad.routeName: (BuildContext context) => Cuidad(),
  BuscarDireccionPage.routeName: (BuildContext context) =>
      BuscarDireccionPage(),
};
