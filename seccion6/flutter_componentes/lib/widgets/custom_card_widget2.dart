import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class CustomCardWidget2 extends StatelessWidget {
  final String imageUrl;
  final String? labelCard;

  const CustomCardWidget2({Key? key, required this.imageUrl, this.labelCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //agrega bordes
      clipBehavior: Clip.antiAlias,
      //redondea la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          //ImageProvider: permite especificar donde se encuentra la imagen
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/images/jar-loading.gif"),
            // funciona cuando el width es limitado
            width: double.infinity,
            //230px, esto puede crear un marco, para eso se usa fit
            height: 230,
            fit: BoxFit.cover,
            // fadeInDuration: Duration(microseconds: 300),
          ),
          if (labelCard != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10),
                child: Text(
                    labelCard!)) // con el signo de admiración se le dice a flutter que deje pasar el valor null
        ],
      ),
    );
  }
}
