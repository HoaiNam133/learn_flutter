//buổi 5
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

//buổi 1 đến 4
/*import 'package:flutter/material.dart';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:learn_flutter/Resposistory/ProductDAO.dart';
import 'package:learn_flutter/Views/Pages/HomePage.dart';
void main() {
  /*
  // truyền list Product vào constructor
  Productdao dao =
  Productdao(Product.products);
  // HIỂN THỊ BAN ĐẦU
  print("DANH SÁCH BAN ĐẦU");
  dao.showProducts();
  // THÊM
  print("THÊM PRODUCT");
  dao.addProduct(Product(
    id: "04",
    name: "Keyboard",
    image: "keyboard.png",
    price: 120)
  );
  dao.showProducts();
  // SỬA
  var p = Product(
    id: "01",
    name: "Gaming Laptop",
    price: 2000,
  );
  dao.updateProduct(p);
  // XÓA
  print("XÓA PRODUCT");
  dao.deleteProduct("02");
  dao.showProducts();
  // TÌM KIẾM
  print("TÌM KIẾM");
  List<Product> result =
 dao.searchByName("Laptop");
  for (var x in result) {
    print(
      "ID: ${x.id} - "
          "Name: ${x.name} - "
          "Price: ${x.price}",
    );
  }
  // LỌC GIÁ
  print("PRICE > 100");
  List<Product> expensiveProducts =
  dao.searchByPrice(100);
  for (var x in expensiveProducts) {
    print(
      "ID: ${x.id} - "
          "Name: ${x.name} - "
          "Price: ${x.price}",
    );
  }
  // SẮP XẾP PRICE
  print("SORT BY PRICE");
  dao.sortByPrice();
  dao.showProducts();
  // SẮP XẾP TÊN
  print("SORT BY NAME");
  dao.sortByName();
  dao.showProducts();
  // TĂNG GIÁ 10%
  print("INCREASE PRICE");
  dao.increasePrice();
  dao.showProducts();
}
*/
//Buoi 3
  runApp(const MyApp() );//khai bao const duoi moi sd dc const
}
//StatelessWidget:Scaffold (First Screen)
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  onPressed(){}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,//k hien thi debug ben phai
        home: Homepage());
  }
}
*/




