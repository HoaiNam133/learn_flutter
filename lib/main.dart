import 'package:flutter/material.dart';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:learn_flutter/Resposistory/ProductDAO.dart';
import 'package:learn_flutter/Views/Pages/HomePage.dart';
import 'package:learn_flutter/Views/Pages/AboutPage.dart';
import 'package:learn_flutter/Views/Pages/ProductDetailPage.dart';
void main() {
  runApp(const MyApp() );//khai bao const duoi moi sd dc const
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  onPressed(){}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => Homepage(),//neu / k dat ten thi mac dinh chay o trang homepage:route vao thi mac dinh se dieu huong den trang home
          '/detail': (context) => ProductDetailPage(),
          '/about': (context) => AboutPage(),
        },
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
    );
  }
}






