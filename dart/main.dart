
void main(List<String> args) {

  print("=============================Number methods =============================");
  var f = 4;
  print("isOdd = ${f.isOdd}");//
  print("isEven = ${f.isEven}");
  print("isFinite = ${f.isFinite}");
  print("isInfinite = ${f.isInfinite}");
  print("isNaN = ${f.isNaN}");
  print("isNegative = ${f.isNegative}");
  print("abs() = ${f.abs()}");

  var f1 = -8.5;

  print("=============================Conditional=============================");
  var name;
  var v1 = name ?? 'leonardo';
  print(v1);
  print("=============================Operation=============================");
  var a = 4;
  var b = 4;
  var c = 0;
  var d = a is int;
  var e = a is! int;
  print(e);
  print(d);
  print(a > c && b == a);
  print("=============================Type Casting=============================");
  // comment

  /**
   * comment
   * multiline
   */
  var x1 = 100;
  var y1 = "10";
  x1 = int.parse(y1);
  x1.toDouble();
  print('x1 = $x1');
  print('y1 = ${y1.runtimeType}');
  print("=============================VAriables=============================");
  var x = 10;
  double y = 10.5;
  String str = "leo";
  bool flag = true;

  final int xx = 20;
  const double yy = 10.45;
  var test = 5, test2 = 8;

  print('x = $x');

  print("============================= PRINT =============================");
  print('''
  Hola
  Mundo
  ''');
  print('3 + 5 = ${3+5}');



}