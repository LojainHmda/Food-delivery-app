import 'package:food_delivery/core/models/categories_model.dart';

class ProductsModel {
  final String id;
  final String name;
  final double price;
  final String imgUrl;
  final CategoryModel category;

  ProductsModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.imgUrl,
      required this.category});
}
List<ProductsModel> food = [
  ProductsModel(
    id: '1',
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    category: categories[0],
  ),
  ProductsModel(
    id: '2',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 9.5,
    category: categories[0],
  ),
  ProductsModel(
    id: '3',
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
    category: categories[0],
  ),
  ProductsModel(
    id: '4',
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    category: categories[2],
  ),
  ProductsModel(
    id: '5',
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    category: categories[1],
  ),
  ProductsModel(
    id: '6',
    name: 'Pasta2',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    category: categories[1],
  ),
  ProductsModel(
    id: '7',
    name: 'Pasta3',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    category: categories[1],
  ),
  ProductsModel(
    id: '8',
    name: 'Pasta4',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    category: categories[1],
  ),
];
