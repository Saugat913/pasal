import 'package:flutter/material.dart';


class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required Map<String, String> itemData,
  }) : _itemData = itemData, super(key: key);

  final Map<String, String> _itemData;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: Row(
            children: [
        Container(
          width: 70,
          height: 75,
            
          child: Image.network("${_itemData["Image"]}"),),
          SizedBox(width: 17,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${_itemData["Name"]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,overflow: TextOverflow.clip),),
                SizedBox(height: 7,),
                //Text.rich(TextSpan())
                Text.rich(TextSpan(text: "\$${_itemData["Amount"]}",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red),children: [TextSpan(text: "   X2",style: TextStyle(color: Colors.black54,fontSize: 12))]))
              ],
            ),
          ),
      ],),
    );
  }
}
