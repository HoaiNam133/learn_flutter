//Bai 4
import 'package:flutter/material.dart';
class ScaffoldThemeDemo extends StatefulWidget {
  const ScaffoldThemeDemo({super.key});

  @override
  // Tạo State quản lý dữ liệu của widget
  State<ScaffoldThemeDemo> createState() => _ScaffoldThemeDemoState();
}
class _ScaffoldThemeDemoState extends State<ScaffoldThemeDemo> {
  bool isDarkMode = false;  // Biến lưu trạng thái Dark Mode// false = giao diện sáng// true = giao diện tối
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),      // Theme sáng
      darkTheme: ThemeData.dark(),      // Theme tối
      themeMode:      // Chọn theme hiện tại
      isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
          title: const Text("Exercise 4 – App Structure",),
          actions: [
            Row(
              children: [
                const Text("Dark"),
                Switch( // Công tắc bật/tắt Dark Mode
                  value: isDarkMode,
                  onChanged: (value) {// Chạy khi người dùng bật/tắt
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),

        body: const Center(
          child: Text("This is a simple screen with theme toggle.", style: TextStyle(fontSize: 18),),
        ),
        floatingActionButton: FloatingActionButton(// Nút tròn nổi ở góc dưới bên phải
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(content: Text("Floating Action Button Pressed",),
              ),
            );
          },
          child: const Icon(Icons.add),// Icon dấu cộng
        ),
      ),
    );
  }
}