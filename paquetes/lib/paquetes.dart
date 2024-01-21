
import 'package:http/http.dart' as http;

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