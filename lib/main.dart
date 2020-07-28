import 'package:addToCart/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:addToCart/bloc/cart_bloc.dart';

void main() => runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Providercart()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        )));
