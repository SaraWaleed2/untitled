import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
void main() {
  runApp(MaterialApp(home:MyApp() ,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  fun()async{
    Uri uri =Uri.parse('https://fakestoreapi.com/products');
    dynamic  response =  await http.get(uri);
    if( response.statusCode == 200){
      var obj =jsonDecode( response.body);
      return obj;
    }
  }
  @override
  void initState() {
    fun();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder<dynamic>(
          future: fun(),
          builder: (context,snapshot){
            return snapshot.hasData
          ? ListView.builder(itemBuilder:
            (context,index){
            return ListTile(
              trailing:
              Text('${snapshot.data[index]['category']}'),
              leading: Image.network('${snapshot.data[index]['image']}'),
              subtitle: Text('${snapshot.data[index]['price']}'),
              title: Text('${snapshot.data[index]['title']}'),
            );
            },
            )
                :snapshot.hasError
                ?Center(child: Text('Error,Some Thing Went Wrong !'))
                :const Center(child: CircularProgressIndicator());
          },
        ) ,
      ),
    );
  }
}

