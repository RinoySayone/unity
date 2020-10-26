import 'package:http/http.dart' as http;
import 'package:unity123/Core/Constant.dart';
/*
 * HttpManager class
 * manage all the http call
 * here is the place we write api calls
 */
class HttpManager {
  /*
   * getEmployeDetail
   * this is async func , after calling this we will get all the details of all employess
   * it includes salary detail, id, name
   * parameters nil
   * GET method
   * it return a futurr http.response
   */
  Future<http.Response> getEmployeesDetail() async {
    return await http.get(urlList["getEmployeesList"]).then((http.Response r) {
      print("response value ${r.body}");
      return r;
    });
  }
}
