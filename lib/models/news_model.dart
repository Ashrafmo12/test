class news_model
{
  List prayer;
  news_model({required this.prayer});
  factory news_model.fromjso(Map<String,dynamic>json)
  {
    return news_model(prayer: json["articles"]);
  }
}