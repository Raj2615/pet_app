import '../models/catagory_model.dart';
import '../models/product_model.dart';

List<CategoryModel> categories = [
  CategoryModel(name: "Dog", image: "assets/images/dog.jpg"),
  CategoryModel(name: "Cat", image: "assets/images/cat.jpg"),
  CategoryModel(name: "Bird", image: "assets/images/bird.jpg"),
  CategoryModel(name: "Food", image: "assets/images/food.jpg"),
  CategoryModel(name: "Accessories", image: "assets/images/toy.jpg"),
];

List<ProductModel> products = [
  ProductModel(
    name: "Dog Food Premium",
    image: "assets/images/food.jpg",
    description: "Healthy dog food with vitamins.",
    price: 299,
    rating: 4.5,
    category: "Dog",
  ),
  ProductModel(
    name: "Cat Toy Ball",
    image: "assets/images/toy.jpg",
    description: "Fun toy for cats to play.",
    price: 150,
    rating: 4.2,
    category: "Cat",
  ),
  ProductModel(
    name: "Bird Cage",
    image: "assets/images/bird.jpg",
    description: "Comfortable cage for birds.",
    price: 500,
    rating: 4.8,
    category: "Bird",
  ),
  ProductModel(
    name: "Dog Collar",
    image: "assets/images/coller.jpg",
    description: "Soft collar for dogs.",
    price: 120,
    rating: 4.1,
    category: "Accessories",
  ),
];
List cartItems = [];
