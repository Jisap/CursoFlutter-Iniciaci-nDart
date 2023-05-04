void main() {
  print(greetEveryone());
  print( 'Suma: ${ addTwoNumbers( 10, 20 )}');
  print( 'Optional ${ addTwoNumberOptional( 10 )}');
  print( greetPerson( name: 'Fernando' ));
}

// String greetEveryone(){
//   return "Hello everyone";
// }

String greetEveryone() => 'Hello everyone';

// int addTwoNumbers( int a, int b ) {
//   return a + b;
// }

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumberOptional(int a, [int? b]){
  b ??= 0; // Si b es null, se asigna el valor 0
  return a + b;
}  
String greetPerson({ required String name, String message='Hola'}){
  return '$message, Fernando';
}
