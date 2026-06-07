class Product {
  final String id;
  final String name;
  final String? image;
  double price;

  // CONSTRUCTOR
  Product(
      {required this.id, required this.name, this.image, required this.price});

  // FACTORY JSON
  factory Product.fromJson(Map<String, dynamic>json){
    return Product(id: json['id'],
        name: json['name'],
        image: json['image'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id, 'name': name, 'image': image, 'price': price
    };
  }

  //toString
  @override
  String toString() {
    return 'Product{name:$name,id:$id,image:$image,price:$price';
  }

  // COPY OBJECT
  Product copyWith({String? id, String? name, String? image, double? price}) {
    return Product(id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        price: price ?? this.price);
  }

  // DANH SÁCH TĨNH
  static List<Product> products = [
    Product(id: "01", name: "Laptop", price: 1500,image: 'assets/images/anhtest.jpg'),
    Product(id: "02", name: "Phone", price: 800,image: 'assets/images/anhtest.jpg'),
    Product(id: "03", name: "Mouse", price: 300,image: 'assets/images/anhtest.jpg'),
  ];
}

/*// HIỂN THỊ DANH SÁCH
  static void showProducts(){
    for(var x in products){
      print(
          "ID: ${x.id} - "
          "Name: ${x.name} - "
              "Image: ${x.image} - "
              "Price: ${x.price}"
      );
    }
  }
  // THÊM SẢN PHẨM
  static void addProduct(Product p){
    products.add(p);
  }
  // SỬA SẢN PHẨM
  static void updateProduct(
      String id,
      {String? newName,
      String? newImage,
      double? newPrice,}
      ){
    for (int i = 0; i < products.length; i++){
      if (products[i].id == id) {
        products[i]=Product(
            id: products[i].id,
            name: newName??products[i].name,
            image: newImage??products[i].image,
            price: newPrice??products[i].price);
      }
    }
  }
  // XÓA SẢN PHẨM
  static void deleteProduct(String id){
    for(int i=0;i<products.length;i++){
      if(products[i].id==id){
        products.removeAt(i);
        break;
      }
    }
  }
  // TÌM KIẾM THEO TÊN
  static List<Product> searchByName(String keyword){
    List<Product> result=[];
    for(var x in products){
      if(x.name!.contains(keyword)){
        result.add(x);
      }
    }
    return result;
  }
  // LỌC GIÁ > price
  static List<Product> getPriceGreaterThan(double price){
    List<Product> result=[];
    for(var x in products){
      if(x.price! > price){
        result.add(x);
      }
    }
    return result;
  }
  // SẮP XẾP THEO TÊN
  static void sortByName(){
    products.sort((a,b)=>(a.name??"").compareTo(b.name??""));
  }
  // SẮP XẾP THEO GIÁ
  static void sortByPrice(){
    products.sort((a,b)=>(a.price??0).compareTo(b.price??0));
  }*/
