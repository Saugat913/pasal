import"package:flutter/material.dart";
import"package:pasal/pages/detailed.dart";



class ItemGrid extends StatefulWidget {
  const ItemGrid({super.key});

  @override
  State<ItemGrid> createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid> {
  var _itemData = [
    {
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
    {
      'Name': 'SAMSUNG 65" Class 4K Crystal UHD ',
      'Amount': '250',
      "Image":
          'https://i5.walmartimages.com/asr/9cea3ce0-d5da-4494-83a4-426d6c42eef3.91f4eda6ddd93df12d9f059c540a9b55.jpeg',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
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
    {
      'Name': 'SAMSUNG 65" Class 4K Crystal UHD ',
      'Amount': '250',
      "Image":
          'https://i5.walmartimages.com/asr/9cea3ce0-d5da-4494-83a4-426d6c42eef3.91f4eda6ddd93df12d9f059c540a9b55.jpeg',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    },
    {
      'Name': '   AirPods (3rd generation)',
      'Amount': '250',
      "Image":
          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000',
      "Des": "The MacBook Pro is the top line of MacBook laptops, introduced in 2006. The Pro was the first Mac laptop to use Intel CPUs and the first laptop to use the Thunderbolt interface in 2011 (see Thunderbolt). In 2020, Apple began switching to its own M1 chip and offered different chip configurations in 2021 "
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _itemData.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 250, crossAxisCount: 2),
      itemBuilder: ((context, index) {
        var _currentData = _itemData.elementAt(index);
        return buildItemCard(_currentData, context);
      }),
    );
  }

  InkWell buildItemCard(Map<String, String> _currentData, BuildContext context) {
    return InkWell(
        onTap: () {
          print("You Select thr product ${_currentData['Name']}");
          Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => DetailedPage(itemData: _currentData))));
        },
        child: Card(
          //color: Colors.blue,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined,size: 19,)),
                ],
              ),
              Hero(
                  tag: _currentData,
                  child: Image.network(
                    _currentData['Image']!,
                    height: 115,
                    fit: BoxFit.contain,
                  )),
                  SizedBox(height: 8,),
              Text(
                "${_currentData['Name']}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
              ),
              Text(
                "\$${_currentData['Amount']}",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      );
  }
}
