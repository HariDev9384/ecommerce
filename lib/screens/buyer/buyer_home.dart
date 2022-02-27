import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Buyer_Home extends StatelessWidget {
  const Buyer_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<products>(builder: ((context, value, child) => Container(
        child: Text('${value.product_name}'),
      ))),
    );
  }
}