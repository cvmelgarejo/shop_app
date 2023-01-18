import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/presentation/shops/views/products_details_view.dart';
import 'package:flutter_complete_guide/presentation/shops/views/products_overview_view.dart';

class Router {
  static const productDetailsView = '/products_details';
  static const productsOverviewView = '/products_overview';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case productDetailsView:
        final title = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(title: title));

      case productsOverviewView:
        return MaterialPageRoute(builder: (_) => ProductsOverviewView());

      default:
        return null;
    }
  }
}
