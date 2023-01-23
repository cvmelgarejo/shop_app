import 'package:flutter/material.dart';
import 'package:shop_app/domain/models/product.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  final Product product;
  final Function(Product product) onProductSelected;
  final Function(String productId) toggleFavoriteStatus;

  ProductItemWidget(
      this.product, this.onProductSelected, this.toggleFavoriteStatus);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (() => {onProductSelected(product)}),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
              icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () => {toggleFavoriteStatus(product.productId)},
              color: Theme.of(context).colorScheme.secondary),
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
