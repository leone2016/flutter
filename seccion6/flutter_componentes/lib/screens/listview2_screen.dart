import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('LIstview Tipo 2'),
          elevation: 0, //shadow appbar
          backgroundColor: AppTheme.primary,
        ),
        body: ListView.separated(
            //como se van a construir cada uno de estos items
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.abc_sharp),
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: AppTheme.primary),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            //
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
