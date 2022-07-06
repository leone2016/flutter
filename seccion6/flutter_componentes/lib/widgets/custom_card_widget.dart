import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.access_alarm_sharp, color: AppTheme.primary),
            title: Text("Soy un titulo"),
            subtitle: Text(
              "Aute deserunt mollit cupidatat aute commodo duis aute ex magna esse est reprehenderit ut amet.",
              style: TextStyle(fontSize: 11),
            ),
          ),
          //ROW: crea widget alado del otro
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("cancel"),
                  style: TextButton.styleFrom(primary: Colors.red[300]),
                ),
                TextButton(onPressed: () {}, child: Text("OK")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
