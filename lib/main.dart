import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/genre_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(// MaterialApp là widget gốc của ứng dụng Material Design
      debugShowCheckedModeBanner: false,

      theme: ThemeData(// Thiết lập giao diện chung của toàn bộ app
        useMaterial3: true,// Sử dụng Material Design 3
      ),

      home: const GenreScreen(),// Màn hình đầu tiên khi mở app
    );
  }
}