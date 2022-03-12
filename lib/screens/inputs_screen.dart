import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Nicolas',
      'last_name' : 'Mahnic',
      'email'     : 'nmahnic@gmail.com',
      'passwd'    : '12345',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and forms"),
      ),
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomInputField( 
                  formProperty: 'first_name', formValues: formValues,
                  hintText: "Nicolas", labelText: "Nombre",
                ),
                CustomInputField(
                  formProperty: 'last_name', formValues: formValues,
                   hintText: "Apellido", labelText: "Apellido", suffixIcon: Icons.boy,
                   ),
          
                CustomInputField( 
                  formProperty: 'email', formValues: formValues,
                  hintText: "Correo electronico", labelText: "Email", 
                  suffixIcon: Icons.mail_outline_rounded, 
                  keyboardType: TextInputType.emailAddress,
                ),
          
                CustomInputField(
                  formProperty: 'passwd', formValues: formValues, 
                  hintText: "Password", labelText: "Password", 
                  suffixIcon: Icons.mail_outline_rounded, 
                  obscureText: true
                ),


                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                    DropdownMenuItem(value: 'Root', child: Text('Root')),
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'User';
                  }
                ),
          
                ElevatedButton(
                  onPressed: () {
                    // Todo: imprimir valores del formulario
                    if(!formKey.currentState!.validate()){
                      FocusScope.of(context).requestFocus( FocusNode() );
                      print("Formulario no valido");
                      return;
                    }
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text("Guardar"),),
                  )
                )
          
              ]
              ),
          ),
        ),
      ),
    );
  }
}

