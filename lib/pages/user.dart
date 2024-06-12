import 'package:flutter/material.dart';
class UserOption {
  UserOption({required this.leadingIcon,required this.optionsName});
  String optionsName;
  IconData leadingIcon;
}
class UserPage extends StatelessWidget {
   UserPage({super.key});
  List<UserOption> _options=[
    UserOption(leadingIcon: Icons.account_circle_outlined, optionsName: "My Account"),
    UserOption(leadingIcon: Icons.notifications, optionsName: "Notifications"),
    UserOption(leadingIcon: Icons.settings, optionsName: "Settings"),
    UserOption(leadingIcon: Icons.help_outline_outlined, optionsName: "Help Center"),
    UserOption(leadingIcon: Icons.logout_outlined, optionsName: "Log Out"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        title: Text("Profile",style: TextStyle(color: Colors.black54),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),onPressed: (){
Navigator.of(context).pop();
        },),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(height: 40,),
          Stack(
            children: [
              CircleAvatar(
                radius: 47,
                backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/21/21104.png"),
              ),
              Positioned(right: -7,bottom: 0,child:Container(height: 30,width: 30,child: ClipRRect(borderRadius: BorderRadius.circular(12),child: InkWell(child: Image.network("https://png.pngtree.com/element_pic/00/16/07/035778e26f4fa65.jpg",fit: BoxFit.contain,),onTap: (){},))) ),
            ],
          ),
          SizedBox(height: 50,),
          Expanded(child: ListView.builder(itemCount: _options.length,itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.only(left:30.0,right: 30,top: 8,bottom: 18),
            child: Container(
              height: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:Color.fromARGB(255, 235, 232, 232),),child: Center(child: ListTile(leading: Icon(_options.elementAt(index).leadingIcon),title: Text("${_options.elementAt(index).optionsName}"),trailing: Icon(Icons.arrow_forward_ios_outlined),onTap: (){
                print("You Pressed ${_options.elementAt(index).optionsName}");
              },))),
          ))))
        ],
      ),
    );
  }
}
