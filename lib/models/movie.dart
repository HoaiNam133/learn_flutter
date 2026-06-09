class Movie {// Lớp Movie dùng để lưu thông tin của một bộ phim
  final String title;
  final int year;
  final List<String> genres;// Danh sách thể loại Ví dụ: ["Action", "Sci-Fi"]
  final String posterUrl;// URL ảnh poster của phim
  final double rating;

  Movie({required this.title, required this.year, required this.genres, required this.posterUrl, required this.rating,});
}
// Danh sách chứa tất cả các bộ phim
final List<Movie> allMovies = [
  Movie(
    title: "Avatar 3",
    year: 2025,
    genres: ["Action", "Sci-Fi"],
    posterUrl:
    "https://ss-images.saostar.vn/wwebp700/2026/1/6/pc/1767636574385/xixaavwkj31-bh7a44aoxp2-k8i1ym7d433.png",
    rating: 8.5,
  ),

  Movie(
    title: "Spider-Man: No Way Home",
    year: 2021,
    genres: ["Action", "Sci-Fi"],
    posterUrl:
    "https://filmartgallery.com/cdn/shop/products/Spider-Man-No-Way-Home-Vintage-Movie-Poster-Original_5000x.jpg?v=1771958270",
    rating: 8.8,
  ),

  Movie(
    title: "Venom: The Last Dance",
    year: 2024,
    genres: ["Comedy", "Sci-Fi"],
    posterUrl:
    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/88e21e46-5c84-403d-a3ff-ad11020c4c05/di4w4wi-da1130cb-6fc8-4fd4-9a81-e1569546c46d.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi84OGUyMWU0Ni01Yzg0LTQwM2QtYTNmZi1hZDExMDIwYzRjMDUvZGk0dzR3aS1kYTExMzBjYi02ZmM4LTRmZDQtOWE4MS1lMTU2OTU0NmM0NmQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.0N8z6qQhduUDObE-4015TrAKuoeXbpQuhMRSOYlYP6M",
    rating: 8.7,
  ),

  Movie(
    title: "Joker: Folie à Deux",
    year: 2024,
    genres: ["Drama","Crime/Thriller"],
    posterUrl:
    "https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/3/image/1800x/71252117777b696995f01934522c402d/r/s/rsz_poster_payoff_joker_folie_a_deux_5_1_.jpg",
    rating: 8.4,
  ),
];