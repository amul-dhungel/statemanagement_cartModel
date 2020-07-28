import 'package:addToCart/bloc/cart_bloc.dart';
import 'package:addToCart/view/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:addToCart/models/product_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Products> product = [
    Products(
        title: 'Apple',
        sellingprice: 12.0,
        price: 15.0,
        description:
            'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.',
        image:
            'https://images-na.ssl-images-amazon.com/images/I/81Dl5GdAVkL.png'),
    Products(
        title: 'Mango',
        sellingprice: 20.0,
        price: 15.0,
        description:
            'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.',
        image:
            'https://devgadmango.com/wp-content/uploads/2019/11/orignal-mango.png'),
    Products(
        title: 'Orange',
        sellingprice: 32.0,
        price: 15.0,
        description:
            'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.',
        image:
            'https://cdn.pixabay.com/photo/2016/02/23/17/42/orange-1218158_960_720.png'),
    Products(
        title: 'Banana',
        sellingprice: 40.0,
        price: 15.0,
        description:
            'An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.',
        image:
            'https://i.dlpng.com/static/png/3995291-bunch-of-bananas-yellow-bananas-big-banana-product-kind-png-bunch-of-bananas-png-451_540_preview.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Providercart>(
      builder: (context, data, child) {
        return Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text('State Shop'),
            actions: [
              IconButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage())),
                  icon: Icon(Icons.shopping_cart)),
              Text(data.totalItems.toString()),
              SizedBox(
                width: 20,
              )
            ],
          ),
          body: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      data.add(product[index]);
                    },
                    leading: Image.network(product[index].image),
                    title: Text(product[index].title),
                    subtitle: Text(product[index].sellingprice.toString()),
                    trailing: Icon(
                      Icons.add,
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
