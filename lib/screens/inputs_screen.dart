import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and forms"),
      ),
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                // initialValue: 'Mash',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => {
                  print(value)
                },
                validator: (value) {
                  if(value == null) return "Este campo es requerido";
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: "Nombre",
                  helperText: "Solo letras",
                  // prefixIcon: Icon( Icons. verified_user_rounded),
                  suffixIcon: Icon( Icons.group_outlined),
                  // icon: Icon( Icons.assignment_ind_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              )
            ]
            ),
        ),
      ),
    );
  }
}