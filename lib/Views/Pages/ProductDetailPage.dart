import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/BottomBar.dart';
import 'package:learn_flutter/Views/Widgets/Product_Widgets.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Product Detail")),
      ),
      bottomNavigationBar: Bottombar(),
      body: Center(child: Text("Product Detail")),
    );
  }
}