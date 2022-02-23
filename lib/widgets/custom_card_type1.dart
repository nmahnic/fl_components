import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon( Icons.photo_album, color: AppTheme.primaryColor),
            title: Text('Soy un titulo'),
            subtitle: Text('Duis minim eu do cupidatat nostrud quis qui. Fugiat consequat cupidatat minim cupidatat fugiat consectetur est cupidatat velit. Aliqua ullamco elit ea exercitation adipisicing. Officia occaecat cillum pariatur occaecat veniam proident duis incididunt Lorem reprehenderit est. Aliqua commodo ea in nulla amet sint tempor adipisicing eiusmod consequat aute aliqua.')
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK')
                ),
              ]
            ),
          )
        ]
      )
    );
  }
}