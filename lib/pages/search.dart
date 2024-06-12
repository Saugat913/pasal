import 'package:flutter/material.dart';
import 'package:pasal/pages/result.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> _data = [
    "Iphone 14 Pro Max",
    "Samsung Tv",
    "AirPod",
    "Mac Book Pro",
    "Test1",
    "Test2",
    "Test3",
    "Test4",
    "USA",
    "Canada",
    "UK"
  ];
  void onDataChanged(String value) {
    if (value == "") {
      setState(() {
        _suggested = _recents;
      });
    } else {
      setState(() {
        _suggested = _data
            .where((element) =>
                element.toLowerCase().startsWith(value.toLowerCase()))
            .toList();
      });
    }
  }

  TextEditingController _controller = TextEditingController();
  List<String> _recents = ["USA", "Canada", "UK"];
  late List<String> _suggested;
  @override
  void initState() {
    // TODO: implement initState
    _suggested = _recents;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                Expanded(
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 232, 232),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: _controller,
                        autofocus: true,
                        onChanged: onDataChanged,
                        onSubmitted: (value) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) =>
                                  ResultPage(searchItem: value))));
                        },
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 14, bottom: 16, right: 14),
                            hintText: "Search"),
                      )),
                ),
                IconButton(
                    onPressed: () {
                      _controller.text = "";
                      onDataChanged(_controller.text);
                    },
                    icon: Icon(Icons.close_outlined))
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: _controller.text == "",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 21),
                      child: Text(
                        "Recents",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: _suggested.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 34),
                            child: ListTile(
                              title: Text("${_suggested.elementAt(index)}"),
                              onTap: () {
                                _controller.text = _suggested.elementAt(index);
                                onDataChanged(_controller.text);
                                // _controller.
                              },
                            ),
                          );
                        })),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
