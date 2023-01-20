import 'package:flutter/material.dart';
import 'package:shop_app/domain/models/product.dart';
import 'package:shop_app/presentation/shops/views/products_details_view.dart';
import 'package:shop_app/presentation/shops/views/products_overview_view.dart';

class Router {
  static const productDetailsView = '/product_details';
  static const productsOverviewView = '/products_overview';

  static MaterialPageRoute? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case productDetailsView:
        final product = settings.arguments as Product;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(product: product));

      case productsOverviewView:
        return MaterialPageRoute(builder: (_) => ProductsOverviewView());

      default:
        return null;
    }
  }
}
