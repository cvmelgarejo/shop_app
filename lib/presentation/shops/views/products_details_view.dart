import 'package:flutter/material.dart';
import 'package:shop_app/domain/models/product.dart';

class ProductDetailsView extends StatelessWidget {
  final Product? product;

  const ProductDetailsView({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product != null ? product!.name : "No llego el nombre"),
      ),
    );
  }
}
