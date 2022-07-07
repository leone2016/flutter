import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void openDialog(){
      showDialog(context: context, builder: builder)
  }

/**
 * INIT 
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert widgth"),
        centerTitle: true,
      ),
      body:  Center(
          child:  ElevatedButton(
          /*   
          Este estilo sobre escribe al tema global de botton en app_theme
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              shape: const StadiumBorder(),
              elevation: 0
            ), */
            onPressed: openDialog,
            // onPressed: ()=> openDialog(),
             child: const Padding(
              //  padding: const EdgeInsets.all(8.0),
               padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
               child:  Text('Mostrar alerta', style: TextStyle( fontSize: 16 ),),
             ),
             )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);// regresa a la anterior pantalla
          }, 
          child: const Icon(Icons.close)
          ),
    );
  }
}
