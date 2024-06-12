import 'package:flutter/material.dart';
import 'package:pasal/components/cartitem.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var _itemData = [
    {
      'Name': 'Iphone 14 pro Max',
      'Amount': '250',
      "Image":
          'https://images.hindustantimes.com/tech/img/2022/08/20/960x540/Untitled_design_-_2022-08-20T143510.743_1660986921934_1660986948247_1660986948247.png',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'Macbook Pro',
      'Amount': '250',
      "Image":
          'https://images.macrumors.com/t/PJemPEph0tylNgWFGNZ8o-JjfcI=/2769x/article-new/2013/09/16-inch-macbook-pro.jpg',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'SAMSUNG 65" Class 4K Crystal UHD ',
      'Amount': '250',
      "Image":
          'https://i5.walmartimages.com/asr/9cea3ce0-d5da-4494-83a4-426d6c42eef3.91f4eda6ddd93df12d9f059c540a9b55.jpeg',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': '   AirPods (3rd generation)',
      'Amount': '250',
      "Image":
          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'Iphone 14 pro Max',
      'Amount': '250',
      "Image":
          'https://images.hindustantimes.com/tech/img/2022/08/20/960x540/Untitled_design_-_2022-08-20T143510.743_1660986921934_1660986948247_1660986948247.png',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'Macbook Pro',
      'Amount': '250',
      "Image":
          'https://images.macrumors.com/t/PJemPEph0tylNgWFGNZ8o-JjfcI=/2769x/article-new/2013/09/16-inch-macbook-pro.jpg',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': 'SAMSUNG 65" Class 4K Crystal UHD ',
      'Amount': '250',
      "Image":
          'https://i5.walmartimages.com/asr/9cea3ce0-d5da-4494-83a4-426d6c42eef3.91f4eda6ddd93df12d9f059c540a9b55.jpeg',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': '   AirPods (3rd generation)',
      'Amount': '250',
      "Image":
          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000',
      "Des":
          "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    }
  ];

  int getTotalAmount() {
    int sum = 0;
    for (var element in _itemData) {
      sum = sum + int.parse(element["Amount"].toString());
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${_itemData.length} items",
              style: TextStyle(color: Colors.black54, fontSize: 11),
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 40),
        height: 125,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
          BoxShadow(
        color: Color.fromARGB(255, 218, 218, 218),
        spreadRadius: 5,
        blurRadius: 20,
        offset: Offset(0, -15), // changes position of shadow
      ),]),
        //color: Colors.red,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark_border,
                  color: Colors.redAccent,
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(right: 28,),
                    width: 100,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          hintText: "Add Token",
                          hintStyle: TextStyle(fontSize: 12),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 14,
                          )),
                    ))
              ],
            ),
            Row(
              children: [
                Text.rich(TextSpan(
                    text: "Total\n",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                          text: "\$${getTotalAmount()}",
                          style: TextStyle(color: Colors.red, fontSize: 14))
                    ])),
                    Spacer(),
                    //Spacer(),
                    Expanded(child: TextButton(onPressed: (){}, child: Container(height: 55,width: double.infinity,decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(17)),child: Center(child:Text("Check Out",style: TextStyle(color: Colors.white,fontSize: 18),)),))),
                    SizedBox(width: 20,)
              ],
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left:14.0),
              child: Text(
                "Pasal",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: _itemData.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Dismissible(
                            direction: DismissDirection.endToStart,
                            key: UniqueKey(),
                            // Key(
                            //     index.toString()),
                            child: CartItem(itemData: _itemData.elementAt(index)),
                            onDismissed: (direction) {
                              setState(() {
                                _itemData.removeAt(index);
                              });
                            },
                            background: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red.shade400),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Icon(
                                    Icons.delete_outline,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                    ))),
          ],
        ),
      ),
    );
  }
}
