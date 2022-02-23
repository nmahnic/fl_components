import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Screen") ,
      ),
      body: Center(
         child: ListView(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical:10 ),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://fondosmil.com/fondo/17021.jpg', name:'Un hermoso paisaje'),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://fondosmil.com/fondo/17022.jpg'),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://fondosmil.com/fondo/17023.jpg'),
            SizedBox(height: 100),
          ]
         )
      ),
    );
  }
}