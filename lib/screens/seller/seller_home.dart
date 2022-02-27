import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Seller_Home extends StatelessWidget {
  const Seller_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HomePage'),
      ),
      body: Container(
        child: Column(
          children: [
            Consumer<products>(
              builder: ((context, value, child) =>
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter Product Name'),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                    
                    ),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onSubmitted: (val){
                  print(val);
                  value.add(val);
                  
                },
              )
               ),
      
            ),
          ],
        ),
      ),
    );
  }
}