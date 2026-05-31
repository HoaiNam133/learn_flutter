//Bai 5
import 'package:flutter/material.dart';

class DebugDemo extends StatelessWidget {
  const DebugDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [// Danh sách tên phim
      "Movie A",
      "Movie B",
      "Movie C",
      "Movie D",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 5 – Common UI Errors"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Correct ListView inside Column using Expanded", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(height: 20),
            Expanded(   // Expanded giúp ListView chiếm phần không gian còn lại trong Column
              child: ListView.builder(
                itemCount: movies.length,// Số phần tử trong danh sách
                itemBuilder: (context, index) {// Hàm tạo từng item
                  return ListTile(
                    leading: const Icon(Icons.movie),// Icon bên trái
                    title: Text(movies[index]),
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