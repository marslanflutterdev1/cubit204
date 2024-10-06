import 'dart:convert';
import 'package:cubit204/Models/users_model.dart';
import 'package:http/http.dart' as http;
class UsersRepo{

 Future<List<UsersModel>> fetchUsersDataRepo()async{
  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  var decodeData = await jsonDecode(response.body) as List<dynamic>;
  var usersDataList =decodeData.map((e) => UsersModel.fromJson(e)).toList();
  if(response.statusCode == 200){
    return usersDataList;
  }else{
    throw Exception("Users Data Not Found");
  }

  }

}