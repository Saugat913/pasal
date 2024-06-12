import 'package:flutter/material.dart';

class DetailOptionTile {
  String optionName;
  IconData optionIcon;
  DetailOptionTile({required this.optionIcon, required this.optionName});
}

class DetailedPage extends StatelessWidget {
  DetailedPage({required this.itemData, super.key});
  Map<String, String> itemData;
  List<DetailOptionTile> options = [
    DetailOptionTile(
        optionIcon: Icons.document_scanner_outlined,
        optionName: "Specification"),
    DetailOptionTile(optionIcon: Icons.reviews, optionName: "Reviews")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 14, right: 14, bottom: 14),
                  decoration: BoxDecoration(
                    // image: DecorationImage(image:NetworkImage("${itemData['Image']}"),fit: BoxFit.fitHeight,),
      
                    color: Color.fromARGB(181, 182, 230, 238),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(40)),
                    //image: DecorationImage(image: NetworkImage("${itemData['Image']}"),fit: BoxFit.contain)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.menu_open)),
                              Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(40)), image: DecorationImage(image:NetworkImage("${itemData['Image']}"),fit: BoxFit.contain,),),))
                    ],
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Electronics/${itemData['Name']}",
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                          subtitle: Text(
                            "${itemData['Name']}",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                            onPressed: (() {}),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 19, bottom: 9),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "120  Reviews",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        //SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(left: 19.0, bottom: 9),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                "88%",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "(120)  recommend this",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        ListTile(
                          title: Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Text("${itemData["Des"]}"),
                          ),
                        ),
      
                        SizedBox(
                          height: 18,
                        ),
                        ...List.generate(
                            options.length,
                            (index) => ExpansionTile(
                                  title: Text(
                                      '${options.elementAt(index).optionName}'),
                                  leading:
                                      Icon(options.elementAt(index).optionIcon),
                                ))
                      ],
                    ),
                  ),
                )),
            Row(
              children: [
                Expanded(
                    child: ListTile(
                  subtitle: Center(child: Text("Delivery 2 - 7 Days")),
                  title: Center(
                      child: Text(
                    "\$${itemData['Amount']}.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                )),
                InkWell(
                  child: Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13)),
                    child: Center(
                        child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13)),
                    child:Icon(Icons.shopping_cart,color: Colors.white70,)
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  child: Container(
                    width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(13)),
                    child: Center(child: Icon(Icons.message,color: Colors.white,),),
                  ),
                ),
                SizedBox(
                  width: 12,
                )
              ],
            ),
            SizedBox(
              height: 19,
            )
      
            //Hero(tag: itemData, child: Image.network('${itemData['Image']}')),
          ],
        ),
      ),
    );
  }
}
