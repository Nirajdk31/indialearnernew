import 'package:flutter/material.dart';

class OrderProvider with ChangeNotifier {
  List<OrderModel> _items = [
    OrderModel(name: 'Build Super Video' , price: '999', orderprice: '800', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '850', orderprice: '800', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '1000', orderprice: '900', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '599', orderprice: '0', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '999', orderprice: '800', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '850', orderprice: '800', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '1000', orderprice: '900', subtitle: 'Build Super Memory Power'),
    OrderModel(name: 'Build Super Video' , price: '599', orderprice: '0', subtitle: 'Build Super Memory Power'),
  ];

  List<OrderModel> get items => _items;

  Future<void> addService(OrderModel model) async {
    _items.add(OrderModel(
      name: model.name,
      price: model.price,
      orderprice: model.orderprice,
      subtitle: model.subtitle
    ));
    notifyListeners();
  }
}

class OrderModel {
  final String name;
  final String subtitle;
  final String price;
  final String orderprice;

  OrderModel({
    required this.subtitle,
    required this.name,
    required this.price,
    required this.orderprice,
  });
}
