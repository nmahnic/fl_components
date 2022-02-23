import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes en Flutter'),
      ),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, item) => ListTile(
            title: const Text('Nombre de Ruta'),
            leading: const Icon( Icons.access_time_outlined),
            onTap: () {
              //  Esta forma sirve para cuando no esta definida la ruta en main 
              // final route = MaterialPageRoute( builder: (context) => const ListView1Screen() );
              // Navigator.push(context, route);

              Navigator.pushNamed(context, '/listView2');
              // Navigator.pushNamed(context, '/card2'); // si la ruta no existe se llama el onGenerateRoute que esta en main.dart
            }
          ), 
          separatorBuilder: (context, item) => const Divider(), 
          itemCount: 10
        )
      ),
    );
  }
}