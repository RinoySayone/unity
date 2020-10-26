/*
 * here is the constant class. the value should have value before run time 
 */
//the domin what we used for api call 
String _domain = "https://dummy.restapiexample.com/";

//we can specifiy the diffrent urls in this map(key value)
//we can simply use for the next api call
final Map<String, String> urlList = {
  "getEmployeesList": _domain + 'api/v1/employees'
};
