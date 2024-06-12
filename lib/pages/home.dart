import 'package:flutter/material.dart';
import 'package:pasal/components/searchbar.dart';
//import 'package:pasal/components/searchbar.dart';
import 'package:pasal/components/slider.dart';
import 'package:pasal/components/grirditem.dart';
import 'package:pasal/pages/cart.dart';
import 'package:pasal/pages/notification.dart';
import 'package:pasal/pages/search.dart';
import 'package:pasal/pages/signin.dart';
import 'package:pasal/pages/user.dart';
//import 'package:searchfield/searchfield.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'detailed.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isCategoryVisible = false;
  //late final PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    //_pageController = PageController();
    super.initState();
  }
var _popularData=[
   {
      'Name': '   AirPods (3rd generation)',
      'Amount': '250',
      "Image":
          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    }, {
      'Name': 'Iphone 14 pro Max',
      'Amount': '250',
      "Image":
          'https://images.hindustantimes.com/tech/img/2022/08/20/960x540/Untitled_design_-_2022-08-20T143510.743_1660986921934_1660986948247_1660986948247.png',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'Macbook Pro',
      'Amount': '250',
      "Image":
          'https://images.macrumors.com/t/PJemPEph0tylNgWFGNZ8o-JjfcI=/2769x/article-new/2013/09/16-inch-macbook-pro.jpg',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
];
  //final textController=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(foregroundColor: Colors.transparent,backgroundColor: Colors.transparent,),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: ((context) => NotificationPage())));
                        //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SignInPage())));
                      },
                      icon: Icon(Icons.notifications),
                      iconSize: 26,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => CartPage())));
                        },
                        icon: Icon(Icons.shopping_cart)),
                    SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => UserPage())));
                      },
                      child: CircleAvatar(
                        radius: 20,
                      ),
                    )
                    //IconButton(onPressed: () {}, icon: Icon(Icons.circle)),
                  ],
                )
              ],
            ),

            SizedBox(
              height: 16,
            ),

            Row(
              children: [
                Expanded(
                    child: SearchBar(),
                    //SearchBar()
                    // Container(
                    //   //width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Color.fromARGB(255, 235, 232, 232),
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child:
                    //  Autocomplete(

                    //   // fieldViewBuilder: (context, textEditingController,
                    //   //         focusNode, onFieldSubmitted) =>
                    //   //     TextField(
                    //   //   onTap: () {
                    //   //     //  // showSearch(
                    //   //     //       context: context, delegate: CustomSearchDelegate());
                    //   //   },
                    //   //   decoration: InputDecoration(
                    //   //     hintStyle: TextStyle(fontSize: 17),
                    //   //     hintText: 'Search',
                    //   //     prefixIcon: Icon(Icons.search),
                    //   //     border: InputBorder.none,
                    //   //     contentPadding: EdgeInsets.all(20),
                    //   //   ),
                    //   // ),
                    //   optionsBuilder: (TextEditingValue textEditingValue) {
                    //     if (textEditingValue.text == '') {
                    //       return const Iterable<String>.empty();
                    //     } else {
                    //       List<String> matches = <String>[];
                    //       matches.addAll(suggestons);

                    //       matches.retainWhere((s) {
                    //         return s.toLowerCase().contains(
                    //             textEditingValue.text.toLowerCase());
                    //       });
                    //       return matches;
                    //     }
                    //   },
                    //   onSelected: (String selection) {
                    //     print('You just selected $selection');
                    //   },

                    //                 optionsViewBuilder: (BuildContext context, void Function(String) onSelected,
                    //                  Iterable<String> options) {

                    //             return Material(
                    //   child:SizedBox(
                    //     height: 200,
                    //     child:SingleChildScrollView(
                    //       child: Column(
                    //         children: options.map((opt){
                    //           return InkWell(
                    //             onTap: (){
                    //                onSelected(opt);
                    //             },
                    //             child:Container(
                    //                 padding: EdgeInsets.only(right:60),
                    //                 child:Card(
                    //                     child: Container(
                    //                       width: double.infinity,
                    //                       padding: EdgeInsets.all(10),
                    //                       child:Text(opt),
                    //                     )
                    //                 )
                    //             )
                    //           );
                    //         }).toList(),
                    //       )
                    //     )
                    //   )
                    // );
                    //                  }
                    //     SearchField(
                    //       //maxSuggestionsInViewPort: 2,
                    //   suggestions: List.generate(
                    //       suggestons.length,
                    //       (index) => SearchFieldListItem(
                    //           "${suggestons.elementAt(index)}",
                    //           child: Padding(
                    //             padding: const EdgeInsets.only(left: 20),
                    //             child: Text("${suggestons.elementAt(index)}"),
                    //           ))),
                    //   searchInputDecoration: InputDecoration(
                    //     hintStyle: TextStyle(fontSize: 17),
                    //     hintText: 'Search',
                    //     prefixIcon: Icon(Icons.search),
                    //     border: InputBorder.none,
                    //     contentPadding: EdgeInsets.all(20),
                    //   ),
                    //   marginColor: Colors.transparent,
                    //   controller: textController,
                    //   onSubmit: ((p0) {
                    //     Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SearchPage(searchItem: p0))));
                    //   }),
                    //   //suggestionItemDecoration: BoxDecoration(border: Border.all()),
                    // ),

//                       TextField(

// autofillHints: [AutofillHints.givenName],
// autocorrect: true,
//                         onTap: () {
//                         //  // showSearch(
//                         //       context: context, delegate: CustomSearchDelegate());
//                         },
//                         decoration: InputDecoration(
//                           hintStyle: TextStyle(fontSize: 17),
//                           hintText: 'Search',
//                           prefixIcon: Icon(Icons.search),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(20),
//                         ),
//                       ),
//                   )),
                    ),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCategoryVisible = isCategoryVisible ? false : true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: isCategoryVisible ? Colors.greenAccent : null,
                        border: Border.all(
                            color: Color.fromARGB(255, 197, 194, 194))),
                    child: Icon(Icons.menu,color: isCategoryVisible?Colors.white:null,),
                  ),
                )
              ],
            ),
            Visibility(
              child: Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 13, top: 9),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            //Color.fromARGB(255, 129, 236, 132),
                            borderRadius: BorderRadius.circular(24)),
                        child: InkWell(
                          child: Center(
                              child: Text(
                            "Electronics",
                            style: TextStyle(color: Colors.white),
                          )),
                          onTap: () {},
                        ),
                      );
                    })),
              ),
              visible: isCategoryVisible,
            ),
            SizedBox(
              height: 25,
            ),
            //aba slider raw item list view
            Expanded(
              child: SingleChildScrollView(
                //physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    CustomSlider(),
                    SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                          TextButton(onPressed: () {
                            
                          }, child:Text("See More >>"))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 125,child: Row(
                      children: List.generate(3, (index) => buildItemCard(_popularData.elementAt(index),context))
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left:8,top: 14,bottom: 8),
                      child: Text("Recommended for You",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    ItemGrid(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
  InkWell buildItemCard(Map<String, String> _currentData, BuildContext context) {
    return InkWell(
        onTap: () {
          print("You Select thr product ${_currentData['Name']}");
          Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => DetailedPage(itemData: _currentData))));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width/3.5,
          child: Card(
            
            //color: Colors.blue,
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined,size: 19,)),
                //   ],
                // ),
                Hero(
                    tag: _currentData,
                    child: Image.network(
                      _currentData['Image']!,
                      height: 50,
                      fit: BoxFit.contain,
                    )),
                    SizedBox(height: 7,),
                Text(
                  "${_currentData['Name']}",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis),
                ),
                Text(
                  "\$${_currentData['Amount']}",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ),
      );
  }
}


