import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_quantom/widgets/style.dart';


class NewsBox extends StatelessWidget {
  final String imageurl, title, time, description, url;
  const NewsBox(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.time,
      required this.description,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            
            elevation: 3,
            child: Container(
              height: 150,
              padding: EdgeInsets.only(left: 20,right: 20),
              // margin: EdgeInsets.only(left: 5, right: 5, top: 5),
              // width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                children: [
                  Container(
                    width: 225,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          modifiedText(
                              color: Colors.blue, size: 15, text: title),
                          SizedBox(height: 5),
                          modifiedText(
                              color: Colors.black, size: 12, text: time),
                        ],
                      ),
                  ),
                  
                  
                  SizedBox(width: 8),
                  Expanded(
                    child: CachedNetworkImage(
                    imageUrl: imageurl,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow),
                     ),
                     placeholder: (context, url) =>
                        CircularProgressIndicator(color: Colors.blue),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  ),
                ],
              ),
            ),
          ),
          // DividerWidget()
        ],
      ),
    );
  }
}