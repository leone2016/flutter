import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: ((context, i) => ListTile(
                leading: Icon(
                  menuOptions[i].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[i].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              )),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}


/**
 * en on tap cree estoo para que funcione el .pushReplacement y .push
 *   final route = MaterialPageRoute(
                      builder: ((context) => const ListViewScreen()));
                  // Navigator.push(context, route);
                  // destruye el history del ventanas, elimina la flecha para regrear atras
                  Navigator.pushReplacement(context, route);
 */