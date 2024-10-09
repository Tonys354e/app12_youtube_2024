import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  getVideos() async{
    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&maxResults=20&key=AIzaSyAd0wmg95jGu3tspHf-f_lTbVW3spWpINU&regionCode=PE";;
    Uri _uri = Uri.parse(_path);

    http.Response response = await http.get(_uri);

   if (response.statusCode == 200){
    Map<String, dynamic > myMap= jsonDecode(response.body);
    List videos = myMap["items"];
    print(videos);
   }
  }
  
}