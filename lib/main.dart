import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/menu_page.dart';
import 'pages/order_page.dart';

void main() {
  runApp(const IceCreamApp());
}

class IceCreamApp extends StatelessWidget {
  const IceCreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Es Krim Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/order': (context) => const OrderPage(),
      },
    );
  }
}
