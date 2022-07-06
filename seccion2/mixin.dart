import 'Abstract_class.dart';

/**
 *
 */
void main(){

  //instancia
  final flipper = new Delfin();
  final batman = new Murcielago();
  final pato = new Pato();
  flipper.nadar();
  print("MURCIELAGO");
  batman.volar();
  batman.caminar();
  print("PATO");
  pato.volar();
  pato.caminar();
  pato.nadar();
}

abstract class Animal{

}

//tipo de animal
abstract class Mamifero extends Animal{}


abstract class Ave extends Animal {}


abstract class Pez extends Animal{}

//caracteristicas del animal
abstract class Volador{
  void volar()=> print('Estoy volando');
}


abstract class Caminante{
  void caminar()=> print('Estoy caminando');
}


abstract class Nadador{
  void nadar()=> print('Estoy nadando');
}

//extención de caracteristica del Animal
/**
 * with es in mixin
 */
//MAMIFERO
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador{}
class Gato extends Mamifero with Caminante{}

//AVE
class Paloma extends Ave with Caminante, Volador{}
class Pato extends Mamifero with Caminante, Volador, Nadador{}

//PEZ
class Tiburon extends Mamifero with Nadador{}
class PezVolador extends Mamifero with Volador, Nadador{}
