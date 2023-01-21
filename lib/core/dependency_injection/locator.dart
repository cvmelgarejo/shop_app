import 'package:shop_app/data/repositories/product_repository_implementation.dart';
import 'package:shop_app/domain/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // Services

  locator.registerLazySingleton<NavigationService>(
    () => NavigationService(),
  );
  locator.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImplementation());
}
