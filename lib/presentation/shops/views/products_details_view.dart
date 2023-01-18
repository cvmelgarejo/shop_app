import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final String title;

  const ProductDetailsView({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        
      ),
    );
  }
}
