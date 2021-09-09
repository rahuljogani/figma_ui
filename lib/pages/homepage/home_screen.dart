import 'package:figma_ui/pages/homepage/my_shops.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        drawer: Drawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            title: Text(
              'TheShop',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            backgroundColor: Color(0xff3f4c6c),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(1),
                bottom: Radius.circular(8),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.more_vert_outlined, color: Colors.white)),
            ],
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.95,
              children: <Widget>[
                Card(
                  color: Color(0xffFCFCFC),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MyShops()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: <Widget>[
                          Image.asset("asset/images/ic_myshop.png",
                              height: 110, width: 110),
                          SizedBox(height: 6),
                          Expanded(
                            child: Text(
                              "My Shops",
                              style: TextStyle(
                                  color: Color(0xff465270),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_orders.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_products.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Products",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_feeds.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                            child: Text(
                          "Feeds",
                          style: TextStyle(
                              color: Color(0xff465270),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        )),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_friends.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Friends",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_chats.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Chats",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_favourites.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Favourites",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_myshop.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Presents",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_presentation.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Transactions",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Card(
                  color: Color(0xffFCFCFC),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset("asset/images/ic_profile.png",
                            height: 110, width: 110),
                        SizedBox(height: 6),
                        Expanded(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                color: Color(0xff465270),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
