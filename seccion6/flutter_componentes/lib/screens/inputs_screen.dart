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
      appBar: AppBar(title: const Text('Inputs and forms')),
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
                  hintText: 'Nombre de Usuario', formProperty: 'first_name', formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                    ),
                CustomInputWidget(
                  labelText: 'Apellido',
                  hintText: 'Apellido de Usuario',
                  formProperty: 'last_name', formValues: formValues
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                  labelText: 'Correo',
                  hintText: 'Correo de Usuario',
                  keyboardType: TextInputType.emailAddress,
                    formProperty: 'email', formValues: formValues
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña de Usuario',
                    obscureText: true,
                    formProperty: 'password', formValues: formValues
                ),
                const SizedBox(
                  height: 30,
                ),  
               DropdownButtonFormField<String>(
                   value: 'Admin',
                   items: const [
                     DropdownMenuItem(value: "Superuser",child: Text("SuperUser")),
                     DropdownMenuItem(value: "Admin",child: Text("Admin")),
                     DropdownMenuItem(value: "Developer",child: Text("Developer")),
                     DropdownMenuItem(value: "Jr. Developer",child: Text("Jr. Developer")),
                   ],
                   onChanged: (value){
                     print(value);
                     formValues['role'] = value ?? 'Admin';
               }),
                const SizedBox(
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
                      //* recordar que los valores son pasados por referencia
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: const Center(child: Text("Guardar")))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
