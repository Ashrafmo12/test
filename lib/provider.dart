import 'package:flutter/cupertino.dart';
import 'package:newss/models/news_model.dart';
import 'package:newss/serviecs/news_serviecs.dart';

class news_provider extends ChangeNotifier
{
  news_model? obj;
  Future<void> fechdata() async
  {
    obj=await news_serviecs.get();
    notifyListeners();
  }
}