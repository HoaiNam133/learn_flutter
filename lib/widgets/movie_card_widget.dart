import 'package:flutter/material.dart';
import 'package:learn_flutter/models/movie.dart';
class MovieCardWidget extends StatelessWidget {
  final Movie movie;// Đối tượng Movie sẽ được hiển thị
  const MovieCardWidget({super.key, required this.movie,});

  @override
  Widget build(BuildContext context) {
    return Card(// Thẻ Card tạo hiệu ứng nổi và bo góc
      child: Padding(
        padding:// Khoảng cách bên trong Card
        const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Căn các phần tử sang bên trái
          children: [
            Expanded(// Chiếm toàn bộ không gian còn lại
              child: Image.network(
                movie.posterUrl,// Link ảnh poster phim
                width: double.infinity,// Chiều rộng tối đa
                fit: BoxFit.cover,// Ảnh phủ kín vùng chứa
              ),
            ),
            const SizedBox(height: 10),// Tạo khoảng trống 10px
            Text(
              movie.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,// Chữ đậm
              ),
            ),
            Text(
              movie.year.toString(),  // Năm phát hành
            ),
            Row(// Điểm đánh giá
              children: [
              const Icon(Icons.star, size: 18, color: Colors.yellow,),
              const SizedBox(width: 4),
              Text(movie.rating.toString()),
          ],
            ),
          ],
        ),
      ),
    );
  }
}