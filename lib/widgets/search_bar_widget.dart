import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onChanged;// Hàm callback nhận dữ liệu người dùng nhập, String là nội dung được nhập vào TextField
  const SearchBarWidget({super.key, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return TextField(// Ô nhập liệu
      decoration: InputDecoration(// Tùy chỉnh giao diện của TextField
        hintText: "Search movie...",// Chữ gợi ý khi chưa nhập gì
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(  // Viền bao quanh TextField
          borderRadius:
          BorderRadius.circular(12),
        ),
      ),

      onChanged: onChanged, // Được gọi mỗi khi người dùng nhập hoặc xóa ký tự
    );
  }
}