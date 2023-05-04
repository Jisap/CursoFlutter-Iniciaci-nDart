void main() async {
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('http:/fernando-herrera.com');
    print ( 'exito: $value' );
  
  }on Exception catch(err){
    print('Tenemos una Exception: $err'); 
  }catch(err){
    print('Algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch');
  }
 
  
  
  print('Fin del programa');

}

//Future viene a ser como una promise
Future<String> httpGet( String url ) async {
  
  // delayed es como un setTimeout
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en el URL');
  
  //return 'Respuesta de la peticion http';
  
}

