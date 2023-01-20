import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shop_app/core/dependency_injection/locator.dart';
import 'core/router/router.dart' as router;
import 'package:stacked_services/stacked_services.dart' as services;

void main() async {
  runZonedGuarded(
    () async {
      setupLocator();
      final container = ProviderContainer();
      runApp(UncontrolledProviderScope(
        container: container,
        child: MyApp(),
      ));
    },
    (error, stackTrace) {
      print(error);
      print(stackTrace);
    },
  );
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    primarySwatch: Colors.purple,
    fontFamily: 'Lato',
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Shop',
        theme: theme.copyWith(
            colorScheme:
                theme.colorScheme.copyWith(secondary: Colors.deepOrange)),
        navigatorKey: services.StackedService.navigatorKey,
        initialRoute: router.Router.productsOverviewView,
        onGenerateRoute: router.Router.generateRoute);
  }
}
