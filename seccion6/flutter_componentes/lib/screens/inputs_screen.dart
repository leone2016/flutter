import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Leonardo',
      'last_name': 'Medina',
      'email': 'leo@gmail.com',
      'password': '1234@Leo',
      'role': 'Admin',
    };
    return Scaffold(
      appBar: AppBar(title: Text('Inputs and forms')),
      // SingleChildScrollView: funciona como si se tuviera un listview para hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            //contenido formulario
            child: Column(
              children:  [
                CustomInputWidget(
                  labelText: 'Nombre',
                  hintText: 'Nombre de Usuario',
                ),
                SizedBox(
                  height: 30,
                    ),
                    CustomInputWidget(
                  labelText: 'Apellido',
                  hintText: 'Apellido de Usuario',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                  labelText: 'Correo',
                  hintText: 'Correo de Usuario',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña de Usuario',
                    obscureText: true),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: (){
                      // cuando se de click en el boton, se desactiva el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      // si el formulario no es valido, no haga nada
                      if( !myFormKey.currentState!.validate()){
                        print("Formulario NO VALIDO");
                        return;
                      }
                      //* imprimir valores del fermulario
                      print(formValues);
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text("Guardar")))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
