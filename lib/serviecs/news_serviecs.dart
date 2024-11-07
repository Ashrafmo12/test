import 'package:dio/dio.dart';
import 'package:newss/models/news_model.dart';

class news_serviecs
{
     static Future<news_model> get () async
     {
       Dio dio=Dio();
       final response=await dio.get("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=596d6c87292c42948c58f35e5caa61bf");
       return news_model.fromjso(response.data);
     }
}