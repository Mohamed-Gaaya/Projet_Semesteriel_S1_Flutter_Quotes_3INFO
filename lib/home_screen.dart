import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clock_app/constant.dart';
import 'package:clock_app/quotes.dart';
import 'package:random_color/random_color.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RandomColor _randomColor = RandomColor();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
        body: Container(
          //color: Colors.red,
            color: _randomColor.randomColor(),
          width: width,
          height: height,
          child : SafeArea (
            child: CarouselSlider.builder(
            itemCount: quotesList.length,
            itemBuilder: (context, index1, index2) {
              return Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quotesList[index1][kQuote], style: kQuoteTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('- ${quotesList[index1][kAuthor]} -',
                    style: kAuthorTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
            options: CarouselOptions(
                scrollDirection: Axis.vertical,
                pageSnapping: true,
                initialPage: 0,
                enlargeCenterPage: true,
                onPageChanged: (index, value) {
                  HapticFeedback.lightImpact();
                }
            ),
          ),
        )
      )
    );
  }
}


