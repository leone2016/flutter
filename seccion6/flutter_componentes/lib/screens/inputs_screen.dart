import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs and forms')),
      // SingleChildScrollView: funciona como si se tuviera un listview para hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Mínimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Nombre del Usuario',
                    labelText: 'Nombre=',
                    helperText: 'Solo letras',
                    counterText: '3 caracteres',
                    prefixIcon: Icon(Icons.verified_user),
                    suffixIcon: Icon(Icons.group_add),
                    icon: Icon(Icons.assignment_ind),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
