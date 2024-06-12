import 'package:flutter/material.dart';
import 'package:pasal/pages/home.dart';
import 'package:pasal/pages/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future main(List<String> args)async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}



// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(24),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 24,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Discover",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w400),
//                 ),
//                 Row(
//                   children: [
//                     IconButton(
//                         onPressed: (() {}), icon: Icon(Icons.notifications)),
//                     IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             // Row(
//             //   children: [
//             //     Expanded(
//             //         child: Container(
//             //       padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//             //       decoration: BoxDecoration(
//             //         borderRadius: BorderRadius.all(Radius.circular(13)),
//             //         color: Color.fromARGB(255, 235, 232, 232),
//             //       ),
//             //       child: Row(
//             //         children: [
//             //           Icon(
//             //             Icons.search_outlined,
//             //             color: Colors.grey,
//             //           ),
//             //           Expanded(
//             //               child: Container(
//             //                   decoration: BoxDecoration(),
//             //                   padding: EdgeInsets.fromLTRB(0, 6, 0, 17),
//             //                   child: TextField(
//             //                     decoration: InputDecoration(
//             //                       border: InputBorder.none,
//             //                       contentPadding: EdgeInsets.all(12),
//             //                     ),
//             //                   )))
//             //         ],
//             //       ),
//             //     )),
//             //   ],
//             // ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 235, 232, 232),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintStyle: TextStyle(fontSize: 17),
//                         hintText: 'Search',
//                         prefixIcon: Icon(Icons.search),
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.all(20),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 14,),


//                 GestureDetector(
//                   onTap: () {
                    
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
                    
//                     child:Icon(Icons.menu) ,
//                     decoration: BoxDecoration(color: Colors.greenAccent,borderRadius:BorderRadius.all(Radius.circular(14))),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 35,),
//             SizedBox(width: double.infinity,
//             height: 90,
//             child: Card()),
//             Expanded(
//               child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder: ((context, index) {
//                 return Card();
//               }),)
//               )
//             // Expanded(
//             //   child: ListView.builder(itemCount: 4,itemBuilder:((context, index) {
//             //     return ListTile(title: Text("$index"),);
//             //     //Card(child: Text("$index"),);
//             //   })),
//             // )
//             // Expanded(
//             //   child: GridView.builder(itemCount: 5,gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2), itemBuilder:(context, index) {
//             //     return Card(child: Text("$index"),color: Colors.greenAccent,shadowColor: Color.fromARGB(255, 187, 182, 182),);
//             //   }),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
