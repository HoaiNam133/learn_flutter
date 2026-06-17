import 'package:learn_flutter/Entities/Product.dart';
class ProductDAO {
  //buoi 5:
  List<Product>? l;
  List<Product> getAllProduct(){
    l=Product.products;
    return l!;
  }
  // HIỂN THỊ
  void showProducts() {
    for (var x in l!){
      print(x);
    }
  }
  // THÊM PRODUCT
  void addProduct(Product p){
    var index=l!.indexWhere((element)=>element.id==p.id);
    if(index<0)
      l!.add(p);
  }
  // XÓA PRODUCT
  void deleteProduct(String id) {
    l!.removeWhere((element) => element.id == id);
  }
  // UPDATE PRODUCT
  void updateProduct(Product pNew){
    var index=l!.indexWhere((element)=>element.id==pNew.id);
    var p=l![index];
    l!.remove(p);
    l!.add(pNew);
  } // SEARCH THEO TÊN
  List<Product> searchByName(String keyword) {
    return l!.where((element) => element.name.toLowerCase().contains(keyword.toLowerCase())).toList();
  }
  // SEARCH THEO GIÁ
  List<Product> searchByPrice(double minPrice,) {
    return l!.where((element) => element.price >= minPrice).toList();
  }
  // SORT THEO GIÁ
  void sortByPrice() {
    l!.sort((a, b) => a.price.compareTo(b.price));
  }
  // SORT THEO TÊN
  void sortByName() {
    l!.sort((a, b) => a.name.compareTo(b.name));
  }
  // TĂNG GIÁ 10%
  void increasePrice() {
    l = l!.map((element) => element.copyWith(price: element.price * 1.1)).toList();
  }
}