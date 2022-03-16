import 'package:flutter/material.dart';
import 'dart:math';

void main()=> runApp(
  MaterialApp(
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.green,
      ),
    ),
    home: Scaffold(
      appBar: AppBar(
          title: const Text('Список элементов')
      ),
      body: ListView.builder(itemBuilder: (context,index){
        var increased_index = pow(2,index);
        return Row(children:[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom:20, left:30, right:0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                  '2 ^ $index = $increased_index',
                  style: const TextStyle(fontSize: 25, color: Colors.grey),
                  textDirection: TextDirection.ltr
              ),
            ),
          ),
        ],
        );
      }),
    ),
  ),
);