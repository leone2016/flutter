import 'dart:math' as math;
  
void main(){
  final cuadrado = new Cuadrado(2);
  
  cuadrado.area = 30;
   print('methodo area, ${cuadrado.calculaArea()}');
  print('get area, ${cuadrado.area}');
  print('lado, ${cuadrado.lado}');
  
}

class Cuadrado{
  
  double lado = 0; //lado x lado
 // double area = this.lado * this.lado;
  
  Cuadrado(double lado):this.lado = lado;
  
  calculaArea(){
    return this.lado * this.lado;
  }
  
  double get area{
    return this.lado * this.lado;
  }
  
  set area(double valor){
    this.lado = math.sqrt(valor);
  }
}