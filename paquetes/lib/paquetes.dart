

import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais.dart';

import 'package:paquetes/classes/reqres_respuesta.dart';


void getReqRes_Service(){
  
final url =  Uri.parse('https://reqres.in/api/users?page=2');

http.get(url).then( (res) {

/// `reqResRespuestaFromJson(res.body)` is likely a function that takes the response body from the HTTP
/// request and converts it into a Dart object. It is used to parse the JSON response and create a Dart
/// object that represents the response data.
/// 
final resReqRes =  reqResRespuestaFromJson(res.body);

   print('page: ${resReqRes.page}');

   print('per_page: ${resReqRes.perPage}');

   print('id del tercer elemento: ${resReqRes.data[2].id}');



  
// var url =
// Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});




  // print(res);

  // final body = jsonDecode(res.body);

  // CODIGO NO OPTIMIZADO

  // print(body);

  // print('page: ${body['page']}');

  // print('per_page: ${body['per_page']}');

  // print('id del tercer elemento: ${body['data'][2]['id']}');


});

}


// TAREA


void getPaisService() {
  final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');
  http.get(url).then((res) {
    List<Pais> paises = paisFromJson(res.body);
 
    // Itera sobre la lista de países (puede contener solo un país en tu caso)
    for (var pais in paises) {
      // Accede a la propiedad 'name' y luego a 'common' directamente en el print
      print('===========================');
      print('País: ${pais.name.common}');
      print('Población: ${pais.population}');
      print('Fronteras: ${pais.borders.map((border) => '\n''     $border').join('')}');
      print('Lenguajes: ${pais.languages.spa}');
      print('Latitud: ${pais.latlng[0]}');
      print('Longitud: ${pais.latlng[1]}');
      print('Moneda: ${pais.currencies.cop.name}');
      print('Bandera: ${pais.flags.png}');
      print('===========================');
   
      
       // print('Pais: ${resReqResPais[ame].name}');
      //Debug console:
      //===========================
      //Pais: Colombia
      //Población: 48759958
      //Fronteras:
      //    Bra
      //    Ecu
      //    Pan
      //    Per
      //    Ven
      //languages: Español
      //Latitud : 4.0
      //Longitud: -72.0
      //Moneda: Colombian peso
      //Bandera: https://restcountries.eu/data/col.svg
      //===========================
    }
  }).catchError((error) => print(error));
}



// VERSION FUNCIONAL SIN ANIDAMIENTOS//
// void getPaisService() {
//   final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');

//   http.get(url).then((res) {
//     var pais = paisFromJson(res.body);

//     // Accede a la propiedad 'name' y luego a 'common'
//     var nombreComun = pais.name.common;

//     print('===========================');
//     print('País: $nombreComun');
    
//     // Resto del código...

//   }).catchError((error) => print(error));
// }



