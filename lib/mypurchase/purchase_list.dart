class CartList{
  final String name;
  final String category;
  final String rating;
  final String courseTime;
  final String urlImage;
  final String version;
  final String price;

  CartList({
    required this.name,
    required this.category,
    required this.rating,
    required this.courseTime,
    required this.urlImage,
    required this.version,
    required this.price,
  });
}

List<CartList> dummyCart = [
  CartList(
      name: "The Complete Flutter Development with Dart.",
      category: "Mobile Apps",
      rating: "4.7",
      courseTime: "48hr45min",
      urlImage: "assets/images/flutter.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "Kotlin Full Course Front-end",
      category: "Mobile Apps",
      rating: "4.3",
      courseTime: "30hr45min",
      urlImage: "assets/images/kotlin.jpg",
      version: "Paid",
      price:  "₹500"
  ),
  CartList(
      name: "Java Basic Course.",
      category: "IT & Software",
      rating: "3.9",
      courseTime: "21hr45min",
      urlImage: "assets/images/java.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "Restfull API complete guide.",
      category: "Development",
      rating: "4.8",
      courseTime: "28hr45min",
      urlImage: "assets/images/api.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "Let us C",
      category: "IT & Software",
      rating: "4.9",
      courseTime: "20hr39min",
      urlImage: "assets/images/Clanguage.jpg",
      version: "Paid",
      price:  "₹500"
  ),
  CartList(
      name: "JavaScript from Scratch.",
      category: "Development",
      rating: "4.2",
      courseTime: "38hr45min",
      urlImage: "assets/images/javascript.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "Master your Python with us.",
      category: "IT & Software",
      rating: "4.7",
      courseTime: "2hr45min",
      urlImage: "assets/images/python.jpg",
      version: "Paid",
      price:  "₹500"
  ),
  CartList(
      name: "Graphic Design MasterClass-PhotoShop, Illustrator",
      category: "Design",
      rating: "4.5",
      courseTime: "19hr25min",
      urlImage: "assets/images/graph.jpg",
      version: "Paid",
      price:  "₹500"
  ),
  CartList(
      name: "Facebook and Instagram Ads Course",
      category: "Development",
      rating: "4.2",
      courseTime: "18hr25min",
      urlImage: "assets/images/ads.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "MongoDB-The complete developers guide",
      category: "It & Software",
      rating: "4.0",
      courseTime: "8hr15min",
      urlImage: "assets/images/mongo.png",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
      name: "React Front to Back",
      category: "It & Software",
      rating: "4.5",
      courseTime: "9hr35min",
      urlImage: "assets/images/react.jpg",
      version: "Free",
      price:  "₹500"
  ),
  CartList(
    name: "MERN Stack full Course",
    category: "Development",
    rating: "3.9",
    courseTime: "20hr45min",
    urlImage: "assets/images/mern.jpg",
    version: "Free",
    price:  "₹500",
  ),
  CartList(
    name: "MEAN Stack full Course",
    category: "Development",
    rating: "4.5",
    courseTime: "19hr25min",
    urlImage: "assets/images/mean.jpg",
    version: "Paid",
    price:  "₹500",
  ),
];