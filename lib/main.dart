import 'package:flutter/material.dart';
import 'package:shoppingapp/src/shared/Product.dart';
import 'package:shoppingapp/src/shared/styles.dart';
import './src/screens/SignInPage.dart';
import './src/screens/SignUpPage.dart';
import './src/screens/HomePage.dart';
import './src/screens/Dashboard.dart';
import './src/screens/ProductPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  List<Product> foods = [
    Product(
        name: "Hamburger",
        image: "lib/images/3.png",
        price: "\$25.00",
        userLiked: true,
        discount: 10),
    Product(
        name: "Pasta",
        image: "lib/images/5.png",
        price: "\$150.00",
        userLiked: false,
        discount: 7.8),
    Product(
      name: "Akara",
      image: 'lib/images/2.png',
      price: '\$10.99',
      userLiked: false,
      discount: 0,
    ),
    Product(
        name: "Strawberry",
        image: "lib/images/1.png",
        price: '\$50.00',
        userLiked: true,
        discount: 14)
  ];

  List<Product> drinks = [
    Product(
        name: "Coca-Cola",
        image: "lib/images/6.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Product(
        name: "Lemonade",
        image: "lib/images/7.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "Vodka",
        image: "lib/images/8.png",
        price: "\$78.99",
        userLiked: false,
        discount: 0),
    Product(
        name: "Tequila",
        image: "lib/images/9.png",
        price: "\$168.99",
        userLiked: true,
        discount: 3.4)
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fryo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: HomePage(pageTitle: 'Welcome'),
      // home: ProductPage(pageTitle: '', productData: foods[1]),
      home: Dashboard(pageTitle: ''),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(
              pageTitle: '',
            ),
        '/signin': (BuildContext context) => SignInPage(
              pageTitle: '',
            ),
        '/dashboard': (BuildContext context) => Dashboard(
              pageTitle: '',
            ),
        '/productPage': (BuildContext context) => ProductPage(
              pageTitle: '',
              productData: foods[0],
            ),
      },
    );
  }
}
