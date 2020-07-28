import 'package:addToCart/models/product_model.dart';
import 'package:flutter/material.dart';

class Providercart extends ChangeNotifier {
  double _total = 0;

  List<Products> _products = [];

  void add(Products product) {
    _products.add(product); // the list name and parameters should be different
    _total = _total + product.sellingprice;
    notifyListeners();
  }

  void remove(Products product) {
    _products.remove(product);
    _total = _total - product.sellingprice;
    notifyListeners();
  }

  List<Products> get producting {
    return _products;
  }

  double get totals {
    return _total;
  }

  int get totalItems {
    return _products.length;
  }
}
