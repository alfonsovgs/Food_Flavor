import 'package:flutter/material.dart';
import 'package:food_flavor_app/widgets/detail_appbar.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DetailAppBar(),
          _titleDetail(),
          _buildTags(),
          _buildStarred(),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _titleDetail() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        children: <Widget>[
          Text(
            "French metballs",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      ),
    );
  }

  Widget _buildTags() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          color: Color(0xffe0e0e0),
          child: Text(
            "Selected cooking",
            style: TextStyle(color: Color(0xff757575)),
          ),
        ),
      ),
    );
  }

  Widget _buildStarred() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: Colors.orange[500]),
          Icon(Icons.star, color: Colors.orange[500]),
          Icon(Icons.star, color: Colors.orange[500]),
          Icon(Icons.star, color: Colors.black),
          Icon(Icons.star, color: Colors.black),
          Text(
            "4.6",
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(Icons.favorite_border, color: Colors.black),
          Text(
            "698",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.bookmark_border, color: Colors.black),
          Text(
            "69",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      child: Divider(color: Colors.black87),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
    );
  }
}
