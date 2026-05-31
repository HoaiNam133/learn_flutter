import 'package:flutter/material.dart';
import 'package:learn_flutter/screen/core_widgets_demo.dart';
import 'package:learn_flutter/screen/debug_demo.dart';
import 'package:learn_flutter/screen/input_controls_demo.dart';
import 'package:learn_flutter/screen/layout_demo.dart';
import 'package:learn_flutter/screen/scaffold_theme_demo.dart';

void main() {
  runApp(const MyApp());// Khởi động ứng dụng Flutter
}

class MyApp extends StatelessWidget {// Widget gốc của toàn bộ ứng dụng
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp là widget gốc
      debugShowCheckedModeBanner: false, // Ẩn dòng chữ DEBUG ở góc phải trên
      title: 'Lab 4',
      theme: ThemeData(// Theme mặc định
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), // Màn hình đầu tiên được mở
    );
  }
}
// Màn hình chính
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab 4 – Flutter UI Fundamentals"),
      ),
      body: ListView(// để hiển thị một danh sách có thể cuộn (scroll).
        children: [
          buildItem(context, "Exercise 1 – Core Widgets Demo",
            const CoreWidgetsDemo(),// Màn hình cần mở
          ),

          buildItem(context, "Exercise 2 – Input Controls Demo",
            const InputControlsDemo(),
          ),

          buildItem(context, "Exercise 3 – Layout Demo",
            const LayoutDemo(),
          ),

          buildItem(context, "Exercise 4 – App Structure & Theme",
            const ScaffoldThemeDemo(),
          ),

          buildItem(context, "Exercise 5 – Common UI Fixes",
            const DebugDemo(),
          ),
        ],
      ),
    );
  }

  // Tạo menu item
  Widget buildItem(BuildContext context,// Context hiện tại
      String title, // Tiêu đề hiển thị
      Widget screen) {// Màn hình cần chuyển tới
    return Card(// Card tạo hiệu ứng thẻ
      margin: const EdgeInsets.all(10), // Khoảng cách ngoài Card
      child: ListTile(//tạo một dòng trong danh sách.
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward), // Icon mũi tên bên phải
        onTap: () {// Khi người dùng nhấn vào item
          Navigator.push( // Chuyển sang màn hình mới
            context,
            MaterialPageRoute( // Route mới
              builder: (context) => screen,// Widget màn hình đích
            ),
          );
        },
      ),
    );
  }
}