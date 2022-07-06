import 'package:flutter/material.dart';

class CustomCardWidget2 extends StatelessWidget {
  const CustomCardWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: const [
          //ImageProvider: permite especificar donde se encuentra la imagen
          FadeInImage(
            image: NetworkImage(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stan-lee-wandavision-cameo-tributo-homenaje-1614077568.jpg'),
            placeholder: AssetImage("assets/images/jar-loading.gif"),
          )
        ],
      ),
    );
  }
}
