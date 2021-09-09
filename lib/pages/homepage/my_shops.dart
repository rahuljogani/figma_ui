import 'package:figma_ui/pages/detailedpage/detail_page.dart';
import 'package:figma_ui/pages/homepage/home_screen.dart';
import 'package:figma_ui/pages/homepage/my_shop_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyShops extends StatefulWidget {
  @override
  _MyShopsState createState() => _MyShopsState();
}

class _MyShopsState extends State<MyShops> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 7),
          child: AppBar(
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              indicatorWeight: 2.5,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Text(
                    "My Shops",
                    style: TextStyle(
                        color: Color(0xffFD2323),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    // maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
                Tab(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Color(0xff9CA0A6),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                Tab(
                    child: Text(
                  "History",
                  style: TextStyle(
                      color: Color(0xff9CA0A6),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )),
                Tab(
                  child: Text(
                    "Invites",
                    style: TextStyle(
                        color: Color(0xff9CA0A6),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            leading: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Homepage()));
                },
                child:
                    Icon(Icons.arrow_back_ios, color: Colors.black, size: 15)),
            title: Text(
              'My Shops',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.more_vert_outlined, color: Colors.black)),
            ],
            centerTitle: true,
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.65,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemCount: 12,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailedPage()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 1.5,
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        gridlist[index]["image"]!,
                                        fit: BoxFit.fill,
                                      ))),
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          child: Text(
                            gridlist[index]["title"]!,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 1, vertical: 1),
                          child: index % 3 == 0
                              ? Row(
                                  children: [
                                    SizedBox(width: 5),
                                    ImageIcon(
                                      AssetImage('asset/images/ic_bag.png'),
                                      color: Color(0xffFD2323),
                                      size: 15,
                                    ),
                                    SizedBox(width: 9),
                                    ImageIcon(
                                      AssetImage('asset/images/ic_wifi.png'),
                                      color: Color(0xffFD2323),
                                      size: 16,
                                    ),
                                    SizedBox(width: 8),
                                    ImageIcon(
                                      AssetImage('asset/images/ic_oval.png'),
                                      color: Color(0xffFD2323),
                                      size: 16,
                                    ),
                                    SizedBox(width: 8),
                                    ImageIcon(
                                        AssetImage('asset/images/ic_tag.png'),
                                        color: Color(0xffFD2323),
                                        size: 16),
                                  ],
                                )
                              : index % 2 == 0
                                  ? Row(
                                      children: [
                                        ImageIcon(
                                          AssetImage('asset/images/ic_bag.png'),
                                          color: Color(0xffFD2323),
                                          size: 15,
                                        ),
                                        SizedBox(width: 8),
                                        ImageIcon(
                                            AssetImage(
                                                'asset/images/ic_tag.png'),
                                            color: Color(0xffFD2323),
                                            size: 16),
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        ImageIcon(
                                          AssetImage('asset/images/ic_bag.png'),
                                          color: Color(0xffFD2323),
                                          size: 15,
                                        ),
                                        SizedBox(width: 8),
                                        ImageIcon(
                                          AssetImage(
                                              'asset/images/ic_wifi.png'),
                                          color: Color(0xffFD2323),
                                          size: 16,
                                        ),
                                        SizedBox(width: 8),
                                        ImageIcon(
                                          AssetImage('asset/images/ic_tag.png'),
                                          color: Color(0xffFD2323),
                                          size: 16,
                                        ),
                                      ],
                                    ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
