import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final _numOfPage = 4;
   int _currentPage=0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 125,
          child: CarouselSlider(
              items: List.generate(
                4,
                (index) => Container(
                  // margin: const EdgeInsets.only(left: 6, right: 6),
                  //height: 100,

                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(19)),
                ),
              ),
              options: CarouselOptions(
                height: 115,
                aspectRatio: 16 / 9,
                viewportFraction: 0.85,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 8),
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                autoPlayCurve:
                    //Curves.easeInOutCirc,
                    Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: ((index, reason) {
                  setState(() {
                     _currentPage=index;
                  });
                 
                }),
                scrollDirection: Axis.horizontal,
              )),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                _numOfPage,
                (index) => Icon(
                      Icons.circle,
                      size: 12,
                      color: _currentPage == index
                          ? Colors.indigoAccent
                          : Colors.grey.shade300,
                    ))
          ],
        )
      ],
    );
  }
}
