void main(){
  
  final perro = new Perro();
  final gato = new Gato();
  
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal){
  
  animal.emitirSonido();
}

abstract class Animal{
  
  int? patas;
  
  Animal();
  
  void emitirSonido();
  
  
}


class Perro implements Animal{
  
  @override
  int? patas;
  
  @override
  void emitirSonido()=>  print('Guauuuu');
  
}

class Gato implements Animal{
  int? patas;
  int? cola;
  
  void emitirSonido()=> print('Miauuuuu');
}