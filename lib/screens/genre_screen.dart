import 'package:flutter/material.dart';
import 'package:learn_flutter/models/movie.dart';
import 'package:learn_flutter/widgets/search_bar_widget.dart';
import 'package:learn_flutter/widgets/genre_chips_widget.dart';
import 'package:learn_flutter/widgets/sort_dropdown_widget.dart';
import 'package:learn_flutter/widgets/movie_card_widget.dart';

class GenreScreen extends StatefulWidget {const GenreScreen({super.key});// Màn hình chính

  @override
  State<GenreScreen> createState() => _GenreScreenState();
}
class _GenreScreenState extends State<GenreScreen> {// State chứa dữ liệu và logic của màn hình
  String searchQuery = "";// Từ khóa tìm kiếm
  String selectedSort = "A-Z";// Kiểu sắp xếp hiện tại
  Set<String> selectedGenres = {};// Các thể loại đang được chọn
  final List<String> genres = [// Danh sách tất cả thể loại
    "Action",
    "Drama",
    "Comedy",
    "Sci-Fi",
    "Crime/Thriller"
  ];

  @override
  Widget build(BuildContext context) {
    List<Movie> visibleMovies = allMovies.where((movie) {// Danh sách phim sau khi lọc
      bool matchesSearch = movie.title.toLowerCase().contains(searchQuery.toLowerCase(),// Kiểm tra phim có chứa từ khóa tìm kiếm hay không
      );
      bool matchesGenre = selectedGenres.isEmpty || movie.genres.any((genre) => selectedGenres.contains(genre),  // Kiểm tra phim có thuộc thể loại đang chọn hay không
              );
      return matchesSearch && matchesGenre;})// Chỉ giữ lại phim thỏa cả 2 điều kiện
        .toList(); // Chuyển kết quả thành List<Movie>
    switch (selectedSort) {// Sắp xếp danh sách phim
      //Kiểm tra giá trị của:selectedSort Ví dụ:"selectedSort = "Rating";"thì Flutter sẽ chạy:"case "Rating":"và bỏ qua các case còn lại.
      case "A-Z"://sắp xếp theo thứ tự bảng chữ cái Unicode từ trái sang phải.
        visibleMovies.sort(//Là hàm sắp xếp List trong Dart.
          //Ví dụ:List<int> numbers = [5, 1, 3];numbers.sort();=>Kết quả:[1,3,5]
              (a, b) => a.title.compareTo//Ví dụ:"Avatar".compareTo("Joker")=>Kết quả:<0=>nghĩa là:Avatar đứng trước Joker
                                         //Ví dụ:"Joker".compareTo("Avatar")=>Kết quả:>0=>nghĩa là:Joker đứng sau Avatar
                                         //Ví dụ:"Avatar".compareTo("Avatar")=>Kết quả:0=>nghĩa là:Jbằng nhau
                (b.title,),
        );
        break;
      case "Z-A"://sắp xếp theo thứ tự bảng chữ cái Unicode từ trái sang phải.Chỉ khác là ngược thứ tự so sánh (b với a thay vì a với b).
        visibleMovies.sort((a, b) => b.title.compareTo(a.title,),
        );
        break;
      case "Year"://hoạt động giống nguyên lý của Z-A, nhưng thay vì so sánh chuỗi (String) thì nó so sánh số nguyên (int) là năm phát hành.
        visibleMovies.sort((a, b) => b.year.compareTo(a.year,),// năm Mới đến Cũ
        );
        break;
      case "Rating"://hoạt động giống nguyên lý của Year, nhưng thay vì so sánh int thì so sánh double.
        visibleMovies.sort((a, b) => b.rating.compareTo(a.rating,),//đánh giả cao đến thấp
        );
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Find a Movie"),
      ),
      body: SafeArea(
        child: Padding(// Tránh bị che bởi tai thỏ hoặc thanh trạng thái
          padding: // Khoảng cách xung quanh nội dung
          EdgeInsets.all(16),
          child: Column(
            children: [
              /*Cách 1:Nhưng cái SortDropdownWidget sẽ ở giữa
              SearchBarWidget( // Thanh tìm kiếm
                onChanged: (value) { // Được gọi khi người dùng nhập
                  setState(() { // Cập nhật giao diện
                    searchQuery = value;}); // Lưu từ khóa tìm kiếm
                },
              ),
              SizedBox(height: 16), // Khoảng cách
              GenreChipsWidget(// Danh sách chip thể loại
                genres: genres,  // Tất cả thể loại
                selectedGenres:   // Các thể loại đang được chọn
                selectedGenres,
                onTap: (genre) {// Khi người dùng bấm chip
                  setState(() {
                    if (selectedGenres.contains(genre)) {// Nếu đã chọn
                      selectedGenres.remove(genre); // Bỏ chọn
                    } else {
                      selectedGenres.add(genre);// Chọn thêm
                    }
                  });
                },
              ),
              SizedBox(height: 16),  // Khoảng cách
              SortDropdownWidget( // Dropdown chọn kiểu sắp xếp
                selectedSort:// Giá trị đang chọn
                selectedSort,
                onChanged: (value) {// Khi thay đổi lựa chọn
                  setState(() {
                    selectedSort = value!;// Cập nhật kiểu sắp xếp
                  });
                },
              ),*/
              //Cách 2:Cái SortDropdownWidget sẽ ở phải search
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: SearchBarWidget(
                      onChanged: (value) {// Được gọi khi người dùng nhập
                        setState(() { // Cập nhật giao diện
                          searchQuery = value;// Lưu từ khóa tìm kiếm
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: SortDropdownWidget(// Dropdown chọn kiểu sắp xếp
                      selectedSort: selectedSort,// Giá trị đang chọn
                      onChanged: (value) {// Khi thay đổi lựa chọn
                        setState(() {
                          selectedSort = value!;// Cập nhật kiểu sắp xếp
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              GenreChipsWidget(// Danh sách chip thể loại
                genres: genres,// Tất cả thể loại
                selectedGenres: selectedGenres,// Các thể loại đang được chọn
                onTap: (genre) {// Khi người dùng bấm chip
                  setState(() {
                    if (selectedGenres.contains(genre)) {// Nếu đã chọn
                      selectedGenres.remove(genre);// Bỏ chọn
                    } else {
                      selectedGenres.add(genre);// Chọn thêm
                    }
                  });
                },
              ),//
              SizedBox(height: 16),
              Expanded(
                child:
                LayoutBuilder(
                  builder: (context, constraints) {// Lấy kích thước màn hình hiện tại
                    if (constraints.maxWidth < 800) {// Nếu màn hình nhỏ hơn 800px
                      return ListView.builder(// Hiển thị dạng danh sách
                        itemCount: visibleMovies.length, // Số lượng phim
                        itemBuilder: (context, index) {// Tạo từng item
                          return SizedBox(
                            height: 250,// Chiều cao mỗi card
                            child:
                            MovieCardWidget(
                              movie: visibleMovies[index],// Truyền dữ liệu phim
                            ),
                          );
                        },
                      );
                    }
                    return GridView.count(// Nếu màn hình lớn// Hiển thị dạng lưới
                      crossAxisCount: 2, // 2 cột
                      childAspectRatio: 0.8,// Tỉ lệ rộng/cao của mỗi item
                      children:
                      visibleMovies.map((movie) => MovieCardWidget(movie: movie,),// Tạo danh sách card phim
                      ).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}