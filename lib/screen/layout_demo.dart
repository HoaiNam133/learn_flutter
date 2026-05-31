//Bai 3
import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> movies = [// Danh sách tên phim
      "Avatar",
      "Inception",
      "Interstellar",
      "Joker",
    ];
    /*khi descript khác nhau thì dùng:C1:
    final List<String> descriptions = [
      "Mô tả A",
      "Mô tả B",
      "Mô tả C",
      "Mô tả ...",
    ];*/
    /*khi descript khác nhau thì dùng:C2:
    final List<Map<String, String>> movies = [
      {"title": "Avatar", "desc": "A sci-fi adventure on Pandora"},
      {"title": "Inception", "desc": "A mind-bending dream thriller"},
      {"title": "Interstellar", "desc": "Journey through space and time"},
      {"title": "Joker", "desc": "A dark psychological drama"},
    ];*/
    return Scaffold(appBar: AppBar(title: const Text("Exercise 3 – Layout Demo"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 10), // Tạo khoảng trống 10px
            const Text("Now Playing", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
            const SizedBox(height: 20),
            Expanded(  // Expanded giúp ListView chiếm// toàn bộ chiều cao còn lại
              child: ListView.builder(
                itemCount: movies.length,// Số lượng phần tử trong danh sách
                itemBuilder: (context, index) {// Tạo từng item
                  return Padding(
                    padding:
                    const EdgeInsets.only(bottom: 12),// Khoảng cách dưới mỗi Card
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder( // Bo góc Card
                        borderRadius:
                        BorderRadius.circular(15),//Bo tròn 4 góc với bán kính 15 pixel.
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        leading: CircleAvatar(backgroundColor: Colors.indigo.shade100, // Màu nền A,I,I,J
                          child: Text(
                            movies[index][0], // Lấy ký tự đầu tiên// Ví dụ: Avatar -> A Joker -> J
                            style: const TextStyle(color: Colors.indigo,//mau chữ
                            ),
                          ),
                        ),
                        title: Text(movies[index], style: const TextStyle(fontSize: 20,),),
                        subtitle: const Text("Sample description",),
                        //khi des khac nhau C1:subtitle: Text(descriptions[index]),
                        //khi des khac nhau C2 :title: Text(movies[index]["title"]!),subtitle: Text(movies[index]["desc"]!),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}