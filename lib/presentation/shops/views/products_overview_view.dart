import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/src/hooks.dart';
import 'package:shop_app/presentation/shops/widgets/product_item_widget.dart';
import 'package:shop_app/presentation/shops/controllers/products_overview_view_controller.dart';

class ProductsOverviewView extends StatefulHookConsumerWidget {
  const ProductsOverviewView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductsOverviewViewState();
}

class _ProductsOverviewViewState extends ConsumerState<ProductsOverviewView> {
  @override
  Widget build(BuildContext context) {
    final productsOverviewViewController = ref.read(productsOverviewProvider);
    final loadedProducts =
        ref.watch(productsOverviewProvider.select((value) => value.products));
    final isfavorite =
        ref.watch(productsOverviewProvider.select((value) => value.isFavorite));

    bool isLoading = false;
    useEffect(() {
      isLoading = true;

      productsOverviewViewController.getProducts().then((value) {
        setState(() {
          isLoading = false;
        });
      });
      return () {};
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItemWidget(
          loadedProducts[i],
          ((product) => {
                productsOverviewViewController.goToProductDetails(
                    product: product)
              }),
          (productId) =>
              productsOverviewViewController.toggleFavoriteStatus(productId),
        ),
      ),
    );
  }
}
