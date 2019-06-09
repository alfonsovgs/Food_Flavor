import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data/items__category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomAppBar(),
                        _buildSearchBar(),
                        _buildRecommendedText(),
                        _buildCards(context),
                        _buildPopulartext(),
                      ],
                    ),
                  ),

                  Container(
                    height: 100.0,
                    child: _buildListPopularCard(context),
                  ),
                  //
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 80,
                width: 80,
                child: Icon(Icons.power_input),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Try searching for items',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }

  Widget _buildRecommendedText() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text("Recomended", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildPopulartext() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text("Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildCards(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .53,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sirloin_steak.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 150,
              width: width - 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: _buildCardText(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardText() {
    var baseStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Selected \n Sirloin Steak", style: baseStyle),
        Text("Excellent taste, smooth and smooth", style: baseStyle),
        Icon(Icons.star, color: Color(0xFFFFC107)),
      ],
    );
  }

  Widget _buildPopularCard(Item item) {
    return Container(
      height: 100.0,
      width: 180.0,
      padding: EdgeInsets.only(left: 5),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + item.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Align(
            child: Text(
              item.name,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  Widget _buildListPopularCard(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, position) {
        if (position == 0) {
          return Padding(
            padding: EdgeInsets.only(left: 10),
            child: _buildPopularCard(items[position]),
          );
        } else if (position == items.length - 1) {
          return Padding(
            padding: EdgeInsets.only(right: 10),
            child: _buildPopularCard(items[position]),
          );
        }

        return _buildPopularCard(items[position]);
      },
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(
        top: statusBarHeight,
      ),
      height: statusBarHeight + barHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Eat on time", style: TextStyle(fontSize: 16.0, color: Colors.grey)),
          Text("Food flavor", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
