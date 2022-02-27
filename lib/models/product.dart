import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class products with ChangeNotifier{
  List<dynamic> product_name=[

  ];
  
  add(var val){
    product_name.add(val);
    notifyListeners();
  }
}