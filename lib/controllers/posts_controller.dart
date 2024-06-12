import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:myapp/models/posts_model.dart';
import 'package:myapp/models/users_model.dart';

class PostsController extends GetxController {
  // State variables
  List<PostsModel> posts = <PostsModel>[].obs;
  List<UsersModel> users = <UsersModel>[].obs;

  Future<void> getPosts() async{
    var dio = Dio();
    var response = await dio.request(
      'https://jsonplaceholder.typicode.com/posts',
      options: Options(
        method: 'GET',
      ),
    );
      
  }

   Future<void> getUsers() async{
    var dio = Dio();
    var response = await dio.request(
      'https://jsonplaceholder.typicode.com/users',
      options: Options(
        method: 'GET',
      ),
    );
     
  }

  @override
  void onInit() async {
 
  
    super.onInit();
  }
}
