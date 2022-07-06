void main() async{
  print("antes de la peticion");
  /*httpGet("https://test.com/aliens")
      .then((value) => print(value.toUpperCase()));*/
  final nombre = await getNombre("10");
  print(nombre);
  print("fin del programa");
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 3), ()=> "hola mundo en 3 seg");
}
Future<String> getNombre(String id) async{
  return '$id - Fernando';
}