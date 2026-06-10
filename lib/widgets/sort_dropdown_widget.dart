import 'package:flutter/material.dart';
class SortDropdownWidget extends StatelessWidget {// Dùng để chọn cách sắp xếp phim
  final String selectedSort;// Giá trị đang được chọn hiện tại,Ví dụ: "A-Z", "Year",...
  final Function(String?) onChanged;// Hàm callback được gọi khi người dùng chọn giá trị mới,String? vì DropdownButton có thể trả về null
  const SortDropdownWidget({super.key, required this.selectedSort, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(  // Widget menu xổ xuống
      value: selectedSort, // Giá trị hiện đang được chọn
      //isDense: true,//Làm cho DropdownButton gọn hơn, giảm chiều cao mặc định.
      underline: SizedBox(),//Mặc định DropdownButton có một đường gạch dưới=>Dùng underline: SizedBox() ẩn đg gạch dưới
      items: const [ // Danh sách các lựa chọn trong menu
        DropdownMenuItem(
          value: "A-Z",
          child: Text("A-Z"),
        ),
        DropdownMenuItem(
          value: "Z-A",
          child: Text("Z-A"),
        ),
        DropdownMenuItem(
          value: "Year",
          child: Text("Year"),
        ),
        DropdownMenuItem(
          value: "Rating",
          child: Text("Rating"),
        ),
      ],
      onChanged: onChanged,// Được gọi khi người dùng chọn mục mới
    );
  }
}