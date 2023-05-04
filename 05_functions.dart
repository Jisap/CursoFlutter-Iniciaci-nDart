void main() {
  print(greetEveryone());
  print( 'Suma: ${ addTwoNumbers( 10, 20 )}');
  print( 'Optional ${ addTwoNumberOptional( 10 )}');
}

// String greetEveryone(){
//   return "Hello everyone";
// }

String greetEveryone() => 'Hello everyone';

// int addTwoNumbers( int a, int b ) {
//   return a + b;
// }

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumberOptional(int a, [int? b]){ // También se podría poner int b = 0 dandole ese valor por defecto si es null
  b ??= 0; // Si b es null, se asigna el valor 0
  return a + b;
}