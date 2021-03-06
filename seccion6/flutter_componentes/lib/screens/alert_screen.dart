import 'dart:io'; //importante para determinar la plataforma ios-android-linux etc etc

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

void openDialogIos(BuildContext context){

  showCupertinoDialog(
    barrierDismissible: false,
    context: context, 
    builder: (context){
      return CupertinoAlertDialog(
          title: const Text('titulo'),
          content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Este es el contenido de la alerta'),
                        SizedBox(height: 10,),
                        FlutterLogo(size: 100,)
                      ]
                      ), 
                      actions: [
                         TextButton(
                          onPressed: ()=> Navigator.pop(context), 
                          child: const Text("Cancelar", style: TextStyle( color: Colors.red),)),
                        TextButton(
                          onPressed: ()=> Navigator.pop(context), 
                          child: const Text("ok")),
                      ]
      );
  });


}
 /*
 * context: si estamos trabajando en un statefull widget el context esta disponible en todo el statefull
 * 
 * pero en un stateless es necesario pasarlo por parametro
 * 
 * builder: es un código que construye un widget
 */
  void openDialogAndroid(BuildContext context){
    var test = context;
      showDialog(
        barrierColor: const Color.fromARGB(76, 124, 15, 214),
        barrierLabel: "TEST TEST",
        barrierDismissible: false, // permite cerrar cuando se hace click en la sombra
        context: context, 
        builder: (context){ 
          //creacion de dialog o modal
          return AlertDialog( 
                    elevation: 5,
                    title: const Text(" titulo"),
                    //redonda los bordes del modal
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
                    //body del modal
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Este es el contenido de la alerta'),
                        SizedBox(height: 10,),
                        FlutterLogo(size: 100,)
                      ]
                      ),
                      //boton modal
                      actions: [
                        TextButton(
                          onPressed: ()=> Navigator.pop(context), 
                          child: const Text("Cancelar"))
                      ],
                 );
          }
          );
  }


 /*
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
            onPressed: ()=>Platform.isIOS? openDialogIos(context): openDialogAndroid(context),
            // onPressed: ()=>openDialogAndroid(context),
            // onPressed: ()=> openDialogAndroid(),
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
