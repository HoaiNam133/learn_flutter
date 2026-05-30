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
}