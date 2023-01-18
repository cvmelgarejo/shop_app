import 'package:flutter/material.dart';
import 'presentation/shops/views/products_overview_view.dart';
import 'core/router/router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    primarySwatch: Colors.purple,
    fontFamily: 'Lato',
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: theme.copyWith(
          colorScheme:
              theme.colorScheme.copyWith(secondary: Colors.deepOrange)),
      home: ProductsOverviewView(),
      initialRoute: router.Router.productsOverviewView,
    );
  }
}
