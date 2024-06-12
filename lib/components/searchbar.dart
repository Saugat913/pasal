import 'package:flutter/material.dart';
import 'package:pasal/pages/search.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key,this.hintText="Search"});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => SearchPage())));
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 232, 232),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Text("$hintText"),
          ],
        ),
      ),
    );
  }
}
