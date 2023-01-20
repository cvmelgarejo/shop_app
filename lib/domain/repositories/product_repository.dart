import 'package:shop_app/domain/models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProduct({required String productId});
  List<Product> getProducts();
}
