//Bai 1
import 'package:flutter/material.dart';
class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//bộ khung (skeleton) của một màn hình ứng dụng.
      appBar: AppBar(//dùng để tạo thanh tiêu đề ở phía trên màn hình trong Flutter.
        leading: IconButton(onPressed: (){Navigator.pop(context);},// QUAY LẠI MÀN HÌNH TRƯỚC
            icon: Icon(Icons.arrow_back)),
        title: const Text("Exercise 1 – Core Widgets"),
      ),
      body: Padding(
          padding:const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Welcome to Flutter UI",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,),),
          const SizedBox(height: 25),// Tạo khoảng cách dọc 25px
          const Center(//can giua cac widget con cua no theo chieu ngang,doc
            child: Icon(Icons.movie_creation,size: 65,color: Colors.blue,),
          ),
          const SizedBox(height: 25),
          Center(
            child: Image.asset('assets/images/anhtest.jpg',
              height: 200,
              width: double.infinity,//Chiếm toàn bộ không gian có thể theo chiều đó.
              fit: BoxFit.cover,//co giãn hình ảnh để lấp đầy toàn bộ vùng chứa (Container) mà vẫn giữ nguyên tỷ lệ ảnh.
            ),
          ),
          const SizedBox(height: 25,),
          Card(//widget dùng để tạo một tấm thẻ:Nền trắng (mặc định),Bo góc,Đổ bóng nhẹ,Chứa các widget khác bên trong
            elevation: 2,//điều chỉnh độ cao (độ nổi) của widget.Khi một widget có độ cao, Flutter sẽ tạo bóng đổ (shadow) phía dưới.
            child: ListTile(
              leading: const Icon(Icons.star,color: Colors.black,),
              title: const Text("Movie Item"),
              subtitle: const Text("This is a sample ListTile inside a Card."),
            ),
          )
        ],
      ),),
    );
  }
}
