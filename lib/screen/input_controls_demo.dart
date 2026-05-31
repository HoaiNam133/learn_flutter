//Bai 2
import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  // Hàm createState() dùng để tạo đối tượng State
  // quản lý trạng thái cho InputControlsDemo
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  double rating = 50;//Biến lưu giá trị đánh giá
  bool isActive = false; // Biến lưu trạng thái bật/tắt false = chưa kích hoạt,true = đã kích hoạt
  String? selectedGenre; // Biến lưu thể loại được chọn Dấu ? nghĩa là có thể null (chưa chọn gì)
  DateTime? selectedDate;  // Biến lưu ngày được chọn Ban đầu chưa có ngày nào nên là null

  Future<void> openDatePicker() async {//Đây là một hàm bất đồng bộ (async), cần thời gian để hoàn thành (Future), và khi hoàn thành thì không trả về giá trị nào (void).
    DateTime? picked = await showDatePicker(// Hiển thị Date Picker và chờ người dùng chọn ngày
      context: context, // Context của widget hiện tại
      initialDate: DateTime.now(),  // Ngày được hiển thị ban đầu
      firstDate: DateTime(2020), // Ngày nhỏ nhất có thể chọn
      lastDate: DateTime(2030),// Ngày lớn nhất có thể chọn
    );

    if (picked != null) { // Nếu người dùng chọn ngày// (không bấm Cancel)
      setState(() {// Cập nhật giao diện
        selectedDate = picked;// Gán ngày vừa chọn vào biến selectedDate
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 2 – Input Controls"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rating
            const Text("Rating (Slider)", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),
            Slider(//để cho người dùng kéo thanh trượt để chọn một giá trị trong một khoảng nhất định.
              value: rating,// Giá trị hiện tại của Slide// rating là biến kiểu double
              min: 0,// Giá trị nhỏ nhất có thể chọn
              max: 100,// Giá trị lớn nhất có thể chọn
              divisions: 100,// Chia Slider thành 100 nấc// Người dùng chỉ có thể chọn các giá trị:0, 1, 2, 3, ..., 100
              label: rating.round().toString(), // Hiển thị giá trị hiện tại khi kéo Slider
              onChanged: (value) {
                setState(() {
                  rating = value; // Gán giá trị mới từ Slider vào biến rating
                });
              },
            ),

            Text(
              "Current value: ${rating.toInt()}",// ${rating.toInt()} chuyển rating từ double sang int// Ví dụ: 75.8 -> 75
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),
            // Switch
            const Text("Active (Switch)", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),
            SwitchListTile(title: const Text("Is movie active?"),
              value: isActive,  // Trạng thái hiện tại của Switch// true = bật// false = tắt
              onChanged: (value) { // Chạy khi người dùng bật/tắt Switch
                setState(() {
                  isActive = value; // Lưu trạng thái mới
                });
              },
            ),
            const SizedBox(height: 15),
            // Radio
            const Text("Genre (RadioListTile)", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),
            RadioListTile<String>(// Radio lựa chọn Action
              title: const Text("Action"),
              value: "Action",  // Giá trị của radio này
              groupValue: selectedGenre,  // Giá trị đang được chọn
              onChanged: (value) {// Chạy khi người dùng chọn
                setState(() {
                  selectedGenre = value; // Lưu thể loại được chọn
                });
              },
            ),
            RadioListTile<String>(
              title: const Text("Comedy"),
              value: "Comedy",
              groupValue: selectedGenre,
              onChanged: (value) {
                setState(() {
                  selectedGenre = value;
                });
              },
            ),
            Text("Selected genre: ${selectedGenre ?? 'None'}",  // Nếu selectedGenre khác null -> hiển thị giá trị// Nếu null -> hiển thị "None"
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: openDatePicker,// Khi nhấn nút sẽ gọi hàm mở Date Picker
                child: const Text("Open Date Picker"),),
            ),
            const SizedBox(height: 10),
            if (selectedDate != null)// Chỉ hiển thị widget bên dưới nếu selectedDate khác null
              Text("Selected date: "
                    "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",), // Dấu ! khẳng định selectedDate không null
          ],
        ),
      ),
    );
  }
}