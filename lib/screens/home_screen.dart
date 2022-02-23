
import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

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
            title: Text( AppRoutes.menuOptions[item].name ),
            leading: Icon( AppRoutes.menuOptions[item].icon, color: AppTheme.primaryColor ),
            onTap: () { Navigator.pushNamed(context, AppRoutes.menuOptions[item].route); }
          ), 
          separatorBuilder: (context, item) => const Divider(), 
          itemCount: AppRoutes.menuOptions.length
        )
      ),
    );
  }
}