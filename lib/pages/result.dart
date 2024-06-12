import 'package:flutter/material.dart';
import 'package:pasal/components/grirditem.dart';
import 'package:pasal/components/searchbar.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key,required this.searchItem});
   String searchItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 9,),
        Row(children: [
          IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
          SizedBox(width: 9,),
          Expanded(child: SearchBar(hintText: searchItem,)),
          SizedBox(width: 18,)
        ],),
        SizedBox(height: 19,),
        Expanded(child: SingleChildScrollView(child: ItemGrid())),
      ],
      )
      ),
    );
  }
}