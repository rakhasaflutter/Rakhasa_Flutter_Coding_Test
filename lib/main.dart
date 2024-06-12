import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/posts_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rakhasa Test',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rakhasa Flutter Code Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final controller = Get.put(PostsController());
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15,),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: controller.posts.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                
                return Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    
                    boxShadow: kElevationToShadow[1],
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child: Text(controller.posts[index].title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),),),
                    SizedBox(height: 10,),
                     Container(
                      height: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/200"), fit: BoxFit.cover),
                      ),
                     ),
                     SizedBox(height: 10,),
                      Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child: Text("Author : ${controller.posts[index].userId}", style: TextStyle( fontSize: 12,color: Colors.grey),),),
                      SizedBox(height: 10,),
                      Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child: Text(controller.posts[index].body, style: TextStyle( fontSize: 14,),),),
                    
                    ],
                  ),
                );
              },
            ),),
          ),

        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
