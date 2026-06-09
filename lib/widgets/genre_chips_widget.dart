import 'package:flutter/material.dart';
class GenreChipsWidget extends StatelessWidget {
  final List<String> genres;  // Danh sách tất cả thể loại Ví dụ: ["Action", "Drama", "Sci-Fi"]
  //genres:Biến thành viên của lớp GenreChipsWidget.Kiểu dữ liệu của nó là List<String>.
  final Set<String> selectedGenres;// Tập hợp các thể loại đang được chọn Ví dụ: {"Action", "Drama"}
  final Function(String) onTap;// Hàm callback khi người dùng nhấn vào một thể loại
  const GenreChipsWidget({super.key, required this.genres, required this.selectedGenres, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,// Khoảng cách ngang giữa các chip
      children:
      genres.map((genre) {// Tạo danh sách widget từ danh sách genres
        return FilterChip( // Tạo một Chip cho mỗi thể loại
          label: Text(genre),// Nội dung hiển thị trên Chip
          selected: // Kiểm tra Chip có đang được chọn hay không
          selectedGenres.contains(genre),

          onSelected: (_) {// Khi người dùng chọn hoặc bỏ chọn Chip
            onTap(genre);// Gọi callback gửi thể loại ra widget cha
          },
        );
      }).toList(),// map() trả về Iterable nên cần chuyển thành List
    );
  }
}