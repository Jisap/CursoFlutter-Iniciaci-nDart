void main() async {
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('http:/fernando-herrera.com');
    print ( value );
  }catch(err){
    print('Tenemos un error: $err');
  }
  
  print('Fin del programa');

}

//Future viene a ser como una promise
Future<String> httpGet( String url ) async {
  
  // delayed es como un setTimeout
  await Future.delayed( const Duration(seconds: 1));
  return 'Respuesta de la peticion http';
  
}

