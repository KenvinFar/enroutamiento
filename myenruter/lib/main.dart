import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myenruter/scr/pages/contenido.dart';
import 'package:myenruter/scr/pages/home_peges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: [
        GoRoute(path: "/", builder: (context, state) => HomePages()),
        GoRoute(path: "/contenido", builder: (context, state) => contenido())
      ])
    );
  }   
  
}