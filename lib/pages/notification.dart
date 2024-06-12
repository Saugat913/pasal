import 'package:flutter/material.dart';



class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,elevation: 0,title: Text("Notification",style: TextStyle(color: Colors.black54),),leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),onPressed: (){
        Navigator.of(context).pop();
      },),),
      body: Container(
        margin: EdgeInsets.all(24),
        child:ListView.builder(itemCount: 4,itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.only(top:20),
          child: ListTile(onTap: (){},title: Text("Dummy Title"),leading: Icon(Icons.announcement_outlined,color: Colors.redAccent,),subtitle: Text("This is new dummy of for you thus doesnot waste any time and buy in sales offer"),),
        ))
      ),
    ));
  }
}