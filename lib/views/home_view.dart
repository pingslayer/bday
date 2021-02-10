import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

import '../providers/video_provider.dart';
import '../data/video_data.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}

class _HomeState extends State<Home> {

  List<Video> _videosArr = [];

  void _createVideosArr() {
    VideoData videoData = new VideoData();
    _videosArr = videoData.getVideosData();
  }

  @override
  void initState() {
    super.initState();
    _createVideosArr();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/res/parchment_2.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 3/1.3,
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          children: _getWishItems(),
        ),
      ),
    );
  }

  List<Widget> _getWishItems() {
    List<Container> wishItems = [];
    int index = 0;
    _videosArr.forEach((item) {
      String photo = item.pName;
      String title = item.title;
      Container wishItem = Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.transparent,
          elevation: 0,
          child: InkWell(
              onTap: () {
                final videoData = Provider.of<VideoProvider>(context, listen: false);
                videoData.addSingleItem('1', item.title, item.pName, item.vName);
                Navigator.pushNamed(context, '/wish');
              },
              child: Column(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 25.0)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset('assets/images/$photo', scale: 1.0),
                  ),
                  Container(margin: EdgeInsets.only(top: 5.0)),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(
                      color: Color(0xff615a48),
                      fontSize: 24.0,
                    ),
                  ),
                ],
              )
          ),
        )
      );
      wishItems.add(wishItem);
      index++;
    });
    return wishItems;
  }

}
