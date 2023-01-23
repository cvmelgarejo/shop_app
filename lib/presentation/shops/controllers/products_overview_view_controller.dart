import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/dependency_injection/locator.dart';
import 'package:shop_app/domain/models/product.dart';
import 'package:shop_app/domain/repositories/product_repository.dart';
import 'package:stacked_services/stacked_services.dart';

class ProducstOverviewViewController extends ChangeNotifier {
  final ProductRepository _productRepository;
  final NavigationService _navigationService;

  List<Product> _products = [];
  List<Product> get products => _products;

  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;

  ProducstOverviewViewController({
    required ProductRepository productRepository,
    required NavigationService navigationService,
  })  : _productRepository = productRepository,
        _navigationService = navigationService;

  Future<void> getProducts() async {
    _products = await _productRepository.getProducts();
    notifyListeners();
  }

  void toggleFavoriteStatus(String productId) {
    _isFavorite = _productRepository.toggleFavoriteStatus(productId);
    notifyListeners();
  }

  void goToProductDetails({Product? product}) {
    _navigationService.navigateTo('/product_details', arguments: {
      'product': product,
    });
  }

  Future<void> fetchStates() async {
    _products = [];

    final promises = [
      getProducts(),
    ];

    await Future.wait(promises);
  }
}

final productsOverviewProvider = ChangeNotifierProvider(
  (ref) => ProducstOverviewViewController(
    productRepository: locator<ProductRepository>(),
    navigationService: locator<NavigationService>(),
  ),
);
