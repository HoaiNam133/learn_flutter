//buoi 5
import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/AboutPage.dart';
import 'package:learn_flutter/Views/Widgets/BottomBar.dart';
import 'package:learn_flutter/Views/Widgets/Product_Widgets.dart';
import 'package:learn_flutter/Views/Pages/ProductDetailPage.dart';
class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});
  AboutOnPress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: AboutOnPress(context),
          icon: Icon(Icons.account_box_outlined),
        ),
      ),
      body: ProductListWidgets(),
      bottomNavigationBar: Bottombar(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Center(child: Text("Home Page")),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            icon: Icon(Icons.account_box_outlined),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/detail'),

            icon: Icon(Icons.details),
          ),
        ],
      ),
      body: [
        ProductListWidgets(),
        Center(child: Text("About")),
        Center(child: Text("Detail product")),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.details), label: "Detail"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "About",
          ),
        ],
      ),
    );
  }
}



//Buoi 1 đến 4
/*
import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/BottomBar.dart';
import 'package:learn_flutter/Views/Widgets/Product_Widgets.dart';
//stl:phimtat
class Homepage extends StatelessWidget{
  const Homepage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu)) ,//ben trai
          title: Center(child: Text("Home page")),//giua va khi boc center thi no se can giua
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more))],//ben phai
          backgroundColor:Colors.green ,//mau nen
        ),
        body: /*SafeArea(
        /*child :Center(//can giua
         child: Text("Hello",//tao vung an toan safearea
         style: TextStyle(color: Colors.red,fontSize: 19),
           textAlign: TextAlign.center),
     ),
   )
   )
   );*/
    //cach 2
         child: Center(
           child: RichText(text:
                TextSpan(
                text: "Hello",
           style: TextStyle(color: Colors.blue,fontSize: 19,fontWeight: FontWeight.bold)),
                  children: [
           TextSpan(text: "Moi",
           style: TextStyle(color: Colors.red,fontSize: 19)),
                  TextSpan(text: "Nguoi",
             style: TextStyle(color: Colors.green,fontSize: 19)),
                  ],
              ),
        ),);*/



/*//khai bao anh:
Container(
height: MediaQuery.of(context).size.height,
//Cach 1: width:MediaQuery.of(context).size.width,//lay theo BuildContext context
//Cach 2:
width: double.infinity,
child:  Image.asset("assets/images/anhtest.jpg",fit: BoxFit.fill,),
),*/
        //Buoi 4:
        //thay vi dung ProductWidget() in ra 1 sp,ta dung ProductListWidgets in ra 1 list sp
        // ProductWidget(),
        ProductListWidgets(),
        bottomNavigationBar:Bottombar()
//da tao 1 file BottonBar
/*BottomNavigationBar(
selectedItemColor: Colors.red,//khi chon se hien thi chu mau do
items: [ //items phai >=2
BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold)),
BottomNavigationBarItem(label: "Favorite", icon: Icon(Icons.favorite,color: Colors.white,fontWeight: FontWeight.bold)),
BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings,color: Colors.white,fontWeight: FontWeight.bold))
],backgroundColor: Colors.green)*/
    );
  }
}*/
