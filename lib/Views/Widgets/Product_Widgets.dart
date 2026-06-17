//buổi 5
import 'package:flutter/material.dart';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:learn_flutter/Resposistory/ProductDAO.dart';
//List view de hien thi 1 lis sp
class ProductListWidgets extends StatelessWidget {
  ProductListWidgets({super.key});
  var products=Product.products;
  @override
  Widget build(BuildContext context) {
    return ReponsiveProudct(products: products,);
  }
}
class ReponsiveProudct extends StatelessWidget {
  List<Product> products;
  ReponsiveProudct({super.key, required this.products});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: MediaQuery.of(context).size.width < 700 ? 1 : 2,
      //Cach 1:children: [for (int i=0;i<products.length;i++)ProductWidget(product: products[i])],
      //Cach 2
      children: products.map((product) => ProductWidgets(product: product)).toList(),
    );
  }
}
class OneColumnProduct extends StatelessWidget {
  List<Product> products;
  OneColumnProduct({super.key, required this.products});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < 5; i++) ProductWidgets(product: products[i]),
      ],
    );
  }
}
class ProductWidgets extends StatefulWidget {
  Product product;
  ProductWidgets({super.key, required this.product});

  @override
  State<ProductWidgets> createState() => _ProductWidgetsState(product: product);
}

class _ProductWidgetsState extends State<ProductWidgets> {
  Product product;

  _ProductWidgetsState({required this.product});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10), //tat ca cac canh thut vao 10px
        child:ProductContainer(product: product),
    );
  }
}
class ProductContainer extends StatelessWidget {
  Product product;
  ProductContainer({super.key,required this.product});
  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(builder: (context,constraints)=>
        Container(
        width: constraints.maxWidth<= 650
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width / 2,
        height: 500,
        //khi lam xong r nen bo border de trong tu nhien hon
        /*decoration: BoxDecoration(
              border: Border.all(width: 3,color: Colors.red)),//border la bo 4 goc*/
        child: Column(
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              children: [//tao ra 10 button ma neu no man hinh nho no se xuong dong
                for (int i = 0; i < 10; i++)
                  ElevatedButton(child: Text("button 1"), onPressed: () {}),
              ],
            ),
            //anh sp
            Expanded(
              flex: 7,//chiem 7 phan cua height=500 cua Container
              child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Stack(children: [
                    Container(
                        width: double.infinity,
                        height: 200,
                        child: Image.asset(product.image!,
                            fit: BoxFit.fill)),//fit: BoxFit.fill lam chan full padding
                    Align(
                        alignment: AlignmentGeometry.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: FloatingActionButton.extended(onPressed: (){}, label:Text("Add to cart"),icon: Icon(Icons.shopping_cart),),
                        )),
                    //khi dung FloatingActionButton.extended... thi phai sap xep lai anh tai la cac widgets de len anh nen anh se bi co lai nen phai dat images vao 1 cai container=dung kich thuoc cua anh sp
                  ])
              ),
            ),
            //Product name, price, like
            Expanded(
              flex: 2,//chiem 2 phan cua height=500 cua Container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,//price, like can giua
                children: [
                  Expanded(
                    flex: 8,//chia chieu ngang product name thanh 8
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,//Product name can sat le trai
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Product name can giua,gian khoang cach
                      children: [
                        Text("Product Name:${product.name}"),
                        Text("Price:${product.price}\$"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.plus_one,color: Colors.yellow,fontWeight: FontWeight.bold,)),),
                  Expanded(
                      flex: 1,
                      child: Text("5.0"),),
                ],
              ),
            ),
            //List Icons
            Expanded(
              flex: 1,//chiem 1 phan cua height=500 cua Container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i=1;i<=5;i++)
                    Icon(Icons.star,color: Colors.yellow,fontWeight: FontWeight.bold,),
                ],
              ),
            ),
            SizedBox(height: 10),
            //Product Description
            Expanded(
              flex: 3,//chiem 3 phan cua height=500 cua Container
              child: Card(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Ngoại hình của nam giới thường được đánh giá qua một số tiêu chuẩn phổ biến:Đường nét khuôn mặt: Mũi cao, xương quai hàm góc cạnh (cằm vuông), trán rộng và ánh mắt có thần.Vóc dáng cân đối: Bờ vai rộng, thân hình săn chắc (chữ V) và có phong cách ăn mặc gọn gàng, phù hợp.Thần thái và sự tự tin: Đây thường là yếu tố quyết định giúp một người đàn ông trở nên cuốn hút hơn trong mắt người đối diện.Những bí quyết đơn giản để trông cuốn hút hơnNếu bạn đang tìm cách cải thiện vẻ ngoài của mình, dưới đây là những bước thay đổi nhỏ nhưng hiệu quả:Chăm sóc da cơ bản: Giữ da mặt sạch sẽ, dùng kem chống nắng và dưỡng ẩm để làn da khỏe mạnh, mịn màng.Chọn kiểu tóc phù hợp: Một mái tóc được cắt tỉa gọn gàng, hợp với dáng khuôn mặt sẽ thay đổi 70% diện mạo của bạn.Định hình phong cách thời trang: Chọn trang phục vừa vặn với cơ thể, màu sắc hài hòa và luôn đảm bảo quần áo phẳng phiu, sạch sẽ.Vệ sinh cá nhân: Chú ý mùi hương cơ thể (sử dụng xịt khử mùi hoặc nước hoa nhẹ nhàng) và giữ răng miệng luôn sạch sẽ.",
                      textAlign: TextAlign.justify,),
                  ),
                ),
              ),
            ),
          ],
        ),
            ),
      );
  }
}

//buổi 1 đến 4
/*
import 'package:flutter/material.dart';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:learn_flutter/Resposistory/ProductDAO.dart';
class ProductListWidgets extends StatelessWidget {
  ProductListWidgets({super.key});
  var products=Product.products;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i=1;i<=5;i++)
          ProductWidget(product:products[i]),
      ],
    );
  }
}

//chi tiet tung san pham
class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget({super.key,required this.product});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),//tat ca cac canh thut vao 10px
      child: Container(
        width: double.infinity,
        height: 500,
        //khi lam xong r nen bo border de trong tu nhien hon
        /*decoration: BoxDecoration(
            border: Border.all(width: 3,color: Colors.red)),//border la bo 4 goc*/
        child: Column(
          children: [
            //anh sp
            Expanded(
              flex: 7,//chiem 7 phan cua height=500 cua Container
              child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Stack(children: [
                    Container(
                        width: double.infinity,
                        height: 200,
                        child: Image.asset('assets/images/anhtest.jpg',fit: BoxFit.fill)),//fit: BoxFit.fill lam chan full padding
                    Align(
                        alignment: AlignmentGeometry.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: FloatingActionButton.extended(onPressed: (){}, label:Text("Add to cart"),icon: Icon(Icons.shopping_cart),),
                        )),
                    //khi dung FloatingActionButton.extended... thi phai sap xep lai anh tai la cac widgets de len anh nen anh se bi co lai nen phai dat images vao 1 cai container=dung kich thuoc cua anh sp
                  ])
              ),
            ),
            //Product name, price, like
            Expanded(
              flex: 2,//chiem 2 phan cua height=500 cua Container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,//price, like can giua
                children: [
                  Expanded(
                    flex: 8,//chia chieu ngang product name thanh 8
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,//Product name can sat le trai
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Product name can giua,gian khoang cach
                      children: [
                        Text("Product name:Anh mau"),
                        Text("Price:500\$"),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Icon(Icons.star,color: Colors.yellow,fontWeight: FontWeight.bold,)),
                  Expanded(
                      flex: 1,
                      child: Text("5.0")),
                ],
              ),
            ),
            //List Icons
            Expanded(
              flex: 1,//chiem 1 phan cua height=500 cua Container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i=1;i<=5;i++)
                    Icon(Icons.star,color: Colors.yellow,fontWeight: FontWeight.bold,),
                ],
              ),
            ),
            SizedBox(height: 10),
            //Product Description
            Expanded(
              flex: 3,//chiem 3 phan cua height=500 cua Container
              child: Card(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Ngoại hình của nam giới thường được đánh giá qua một số tiêu chuẩn phổ biến:Đường nét khuôn mặt: Mũi cao, xương quai hàm góc cạnh (cằm vuông), trán rộng và ánh mắt có thần.Vóc dáng cân đối: Bờ vai rộng, thân hình săn chắc (chữ V) và có phong cách ăn mặc gọn gàng, phù hợp.Thần thái và sự tự tin: Đây thường là yếu tố quyết định giúp một người đàn ông trở nên cuốn hút hơn trong mắt người đối diện.Những bí quyết đơn giản để trông cuốn hút hơnNếu bạn đang tìm cách cải thiện vẻ ngoài của mình, dưới đây là những bước thay đổi nhỏ nhưng hiệu quả:Chăm sóc da cơ bản: Giữ da mặt sạch sẽ, dùng kem chống nắng và dưỡng ẩm để làn da khỏe mạnh, mịn màng.Chọn kiểu tóc phù hợp: Một mái tóc được cắt tỉa gọn gàng, hợp với dáng khuôn mặt sẽ thay đổi 70% diện mạo của bạn.Định hình phong cách thời trang: Chọn trang phục vừa vặn với cơ thể, màu sắc hài hòa và luôn đảm bảo quần áo phẳng phiu, sạch sẽ.Vệ sinh cá nhân: Chú ý mùi hương cơ thể (sử dụng xịt khử mùi hoặc nước hoa nhẹ nhàng) và giữ răng miệng luôn sạch sẽ.",
                      textAlign: TextAlign.justify,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/