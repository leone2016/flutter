void main(){
  print("antes de la peticion");
  httpGet("https://test.com/aliens")
      .then((value) => print(value.toUpperCase()));
  print("fin del programa");
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 3), ()=> "hola mundo en 3 seg");
}