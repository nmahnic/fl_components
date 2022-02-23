
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: {
        '/home'      :( BuildContext context ) => const HomeScreen(),
        '/listView1' :( BuildContext context ) => const ListView1Screen(),
        '/listView2' :( BuildContext context ) => const ListView2Screen(),
        '/card'      :( BuildContext context ) => const CardScreen(),
        '/alert'     :( BuildContext context ) => const AlertScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings); 
      //   /*
      //     si la ruta a la que se quiere navegar no existe, se crea y por defecto navega a 
      //     el widget ques devuelve el MaterialPageRoute
      //   */
      //   return MaterialPageRoute(
      //     builder: (context) => const AlertScreen(),
      //   );
      // },
    );
  }
}