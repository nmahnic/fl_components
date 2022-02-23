import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Meganma', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List view Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map((itemName) => 
            ListTile(
              title: Text(itemName),
              trailing: const Icon(Icons.arrow_forward_ios_outlined), //agrega icono al final 
              // leading: const Icon( Icons.indeterminate_check_box_sharp), //agrega icono al inicio
            ),
          ).toList()

        ]
      )
    );
  }
}