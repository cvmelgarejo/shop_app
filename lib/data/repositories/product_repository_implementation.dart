import 'dart:developer';

import 'package:shop_app/data/database/mock_data.dart';
import 'package:shop_app/domain/models/product.dart';
import 'package:shop_app/domain/repositories/product_repository.dart';

class ProductRepositoryImplementation implements ProductRepository {
  @override
  Product getProduct({required String productId}) {
    final product =
        loadedProducts.where((product) => product.productId == productId).first;
    return product;
  }

  @override
  List<Product> getProducts() {
    final allProducts = loadedProducts;
    return allProducts;
  }
}
