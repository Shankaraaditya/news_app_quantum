import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_quantom/functions/api.dart';
// import 'package:technewz/backend/functions.dart';
// import 'package:technewz/utils/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);
  static TextEditingController searchcontroller =
      TextEditingController(text: '');

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
              fetchnews();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.search,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                      child: TextField(
                        
                    controller: SearchBar.searchcontroller,
                    decoration: InputDecoration(
                        hintText: 'Search in feed',
                        
                        hintStyle: GoogleFonts.lato(),
                        border: InputBorder.none),
                  ))
                ],
              )),
            ),
          ),
          
          SizedBox(width: 10)
        ],
      ),
    );
  }
}