import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/Product_Widgets.dart';
import 'package:learn_flutter/Views/Widgets/BottomBar.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //leading: IconButton(onPressed:(){Navigator.pop(context);},icon:Icon(Icons.home)),
        title: Center(child: Text("About Page")),
      ),
      body: Center(child: Text("About Author")),
      bottomNavigationBar: Bottombar(),
    );
  }
}