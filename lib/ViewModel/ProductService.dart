import 'dart:async';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter/Resposistory/ProductDAO.dart';
part 'ProductService.g.dart';
@riverpod
class ProductService extends _$ProductService{
  List<Product>? products;
  @override
  FutureOr<List<Product>>build() {
    //phuong thuc build thay the cho Contructor de khoi tao du lieu
    //ref.watch giup tu dong cap nhat neu productDAOProvider thay doi
    products = ref.watch(productDAOProvider).getAllProduct();
    return products!;
  }
    //tạo productDAOProvider bằng cách: tạo ra provider giống tên lớp sửa chữ in hoa đầu thành chữ thường + Provider
    //Các phương thức thay đổi dữ liệu(Action)
    FutureOr<void> addProduct(Product p) async{
      ref.read(productDAOProvider).addProduct(p);//lam moi chinh no de goi lai build() va cap nhat UI
      ref.invalidateSelf();//tbao cho giao dien thay doi
  }
    FutureOr<void>deleteProduct(String id) async{
      ref.read(productDAOProvider).deleteProduct(id);
      ref.invalidateSelf();
  }
    FutureOr<void> updateProduct(Product pNew) async{
      ref.read(productDAOProvider).updateProduct(pNew);
      ref.invalidateSelf();
  }
    FutureOr<List<Product>>searchProduct(String name)async{
      var psearch= products!.where((p)=>p.name!.contains(name)).toList();
      ref.invalidateSelf();
      return psearch;
  }
}
