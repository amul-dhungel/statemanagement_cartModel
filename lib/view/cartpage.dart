import 'package:addToCart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Providercart>(
      builder: (context, data, child) {
        return Scaffold(
          bottomNavigationBar: Container(
            color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Items : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  data.totalItems.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Total : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  data.totals.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Cart List'),
          ),
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: data.totalItems,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => data.remove(data.producting[index]),
                  leading: Image.network(data.producting[index].image),
                  title: Text(data.producting[index].title),
                  subtitle:
                      Text(data.producting[index].sellingprice.toString()),
                  trailing: Icon(Icons.remove_circle),
                );
              }),
        );
      },
    );
  }
}
