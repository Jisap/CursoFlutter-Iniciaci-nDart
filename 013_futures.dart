void main(){
  
  print('Inicio del programa');
  
  httpGet('httos://fernando-herrera.com')
    .then((value){
        print(value);
    })
    .catchError((err){
        print('Error: $err');
  });
  
  print('Fin del programa');

}

//Future viene a ser como una promise
Future<String> httpGet( String url ){
  
  // delayed es como un setTimeout
  return Future.delayed( const Duration(seconds: 1), (){ 
    return 'Respuesta de la peticion http';
  });
}

