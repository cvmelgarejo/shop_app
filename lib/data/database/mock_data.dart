import '../../domain/models/product.dart';

final List<Product> loadedProducts = [
  Product(
    productId: 'p1',
    name: 'Red Shirt',
    description: 'A red shirt - it is pretty red!',
    price: 29.99,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
  Product(
    productId: 'p2',
    name: 'Trousers',
    description: 'A nice pair of trousers.',
    price: 59.99,
    imageUrl: 'https://m.media-amazon.com/images/I/71WCBA-yHvL._UL1500_.jpg',
  ),
  Product(
    productId: 'p3',
    name: 'Yellow Scarf',
    description: 'Warm and cozy - exactly what you need for the winter.',
    price: 19.99,
    imageUrl: 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
  ),
  Product(
    productId: 'p4',
    name: 'A Pan',
    description: 'Prepare any meal you want.',
    price: 49.99,
    imageUrl: 'https://m.media-amazon.com/images/I/71nd7YSIRGL.jpg',
  ),
];
