import 'package:figma_ui/pages/detailedpage/detail_page_view.dart';
import 'package:figma_ui/pages/homepage/my_shops.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({Key? key}) : super(key: key);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  bool onTap = false;
  int current = 0;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 19,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyShops()));
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Color(0xff222222),
                        )),
                    Container(
                      padding: EdgeInsets.only(right: 1),
                      child: CircleAvatar(
                        radius: 31.0,
                        child: ClipRRect(
                          child: Image.asset("asset/images/ic_shop_logo.png"),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      "Stop&Shop",
                      style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ImageIcon(
                      AssetImage('asset/images/ic_phone.png'),
                      color: Color(0xff424242),
                      size: 17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    ImageIcon(
                      AssetImage('asset/images/ic_chat.png'),
                      color: Color(0xff424242),
                      size: 17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    ImageIcon(
                      AssetImage('asset/images/ic_arrange.png'),
                      color: Color(0xff424242),
                      size: 17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                  ],
                )
              ],
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 60,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabbar.length,
                itemBuilder: (context, index) {
                  // print("ICONPATH-->${tabbar[index]["icon"]}");
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          onTap = !(onTap);
                          current = index;
                        });
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset(
                                tabbar[index]["icon"],
                                width: 30,
                                height: 20,
                                color: current == index
                                    ? Colors.red
                                    : Colors.black,
                              ),
                              Text(
                                tabbar[index]["title"],
                                style: TextStyle(
                                    color: current == index
                                        ? Color(0xffFD2323)
                                        : Colors.black),
                              ),
                            ],
                          ),
                          Positioned(
                            right: -4,
                            top: 1,
                            bottom: 40,
                            child: Container(
                              width: 15,
                              height: 5,
                              child: all[index]["dot"].toString() == "null"
                                  ? Container()
                                  : Icon(Icons.circle,
                                      color: Color(0xfffd2323), size: 8),
                              //   //       ? Container()
                              //   //       : Image.asset(all[index]["dot"]),
                              // child: Icon(Icons.circle,
                              //     color: Color(0xfffd2323), size: 8),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Row(
            //   children: [
            //     SizedBox(width: MediaQuery.of(context).size.width / 10),
            //     InkWell(
            //       onTap: () {},
            //       child: Stack(
            //         children: [
            //           Column(
            //             children: [
            //               ImageIcon(
            //                 AssetImage('asset/images/ic_deals.png'),
            //                 color: Color(0xffFD2323),
            //               ),
            //               Text(
            //                 "Deals",
            //                 style: TextStyle(
            //                     color: Color(0xffFD2323),
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ],
            //           ),
            //           Positioned(
            //             right: 3,
            //             top: -1,
            //             child: Container(
            //               width: 4,
            //               height: 5,
            //               child: Icon(Icons.circle,
            //                   color: Color(0xfffd2323), size: 8),
            //               // child: ImageIcon(
            //               //   AssetImage("asset/images/ic_dot1.png"),
            //               //   color: Color(0xffFD2323),
            //               //   size: 50,
            //               // ),
            //             ),
            //             // child: Icon(
            //             //   Icons.stop,
            //             //   color: Colors.red,
            //             // )
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(width: MediaQuery.of(context).size.width / 7),
            //     InkWell(
            //       onTap: () {},
            //       child: Stack(
            //         children: [
            //           Column(
            //             children: [
            //               ImageIcon(
            //                 AssetImage('asset/images/ic_catalog.png'),
            //                 color: Color(0xffD0D0D0),
            //               ),
            //               Text(
            //                 "Catalog",
            //                 style: TextStyle(
            //                     color: Color(0xff9CA0A6),
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ],
            //           ),
            //           Positioned(
            //             right: 3,
            //             top: -1,
            //             child: Container(
            //               width: 5,
            //               height: 5,
            //               child: Icon(Icons.circle,
            //                   color: Color(0xfffd2323), size: 8),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(width: MediaQuery.of(context).size.width / 6.5),
            //     InkWell(
            //       onTap: () {},
            //       child: Column(
            //         children: [
            //           ImageIcon(
            //             AssetImage('asset/images/ic_feed.png'),
            //             color: Color(0xffD0D0D0),
            //           ),
            //           Text(
            //             "Feeds",
            //             style: TextStyle(
            //                 color: Color(0xff9CA0A6),
            //                 fontWeight: FontWeight.w400),
            //           ),
            //         ],
            //       ),
            //     ),
            //     SizedBox(width: MediaQuery.of(context).size.width / 9.5),
            //     InkWell(
            //       onTap: () {},
            //       child: Column(
            //         children: [
            //           ImageIcon(
            //             AssetImage('asset/images/ic_info.png'),
            //             color: Color(0xffD0D0D0),
            //           ),
            //           Text(
            //             "Info",
            //             style: TextStyle(
            //                 color: Color(0xff9CA0A6),
            //                 fontWeight: FontWeight.w400),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Spacer(),
            //   ],
            // ),
            current == 0
                ? (Expanded(
                    child: Container(
                      //padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      //margin: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.65,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: all.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          all[index]["image"],
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            all[index]["off"],
                                            style: TextStyle(
                                                color: Color(0xff434343)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(10),
                                            width: 8,
                                            height: 8,
                                            child:
                                                all[index]["dot"].toString() ==
                                                        "null"
                                                    ? Container()
                                                    : Image.asset(
                                                        all[index]["dot"]),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              150),
                                      Text(
                                        all[index]["title"],
                                        style: TextStyle(
                                            color: Color(0xff434343),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ))
                : current == 1
                    ? Text("no data")
                    : current == 2
                        ? Text("no data found")
                        : Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.34,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "asset/images/ic_info_shop.png"),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                4.2,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.79,
                                        child: Image.asset(
                                            "asset/images/ic_gallery.png"),
                                        width: 55,
                                        height: 55,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                Center(
                                  child: Column(
                                    children: [
                                      Text("Business Name",
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e)
                                                  .withOpacity(1),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                      Text(
                                        "Business Description",
                                        style: TextStyle(
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ImageIcon(
                                            AssetImage(
                                                'asset/images/ic_linkedin.png'),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                          ),
                                          ImageIcon(
                                            AssetImage(
                                                'asset/images/ic_insta.png'),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                          ),
                                          ImageIcon(
                                            AssetImage(
                                                'asset/images/ic_fb.png'),
                                            size: 25,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                          ),
                                          ImageIcon(
                                            AssetImage(
                                                'asset/images/ic_twitter.png'),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    ListTile(
                                      leading: Image.asset(
                                          "asset/images/ic_twitter.png"),
                                    ),
                                  ],
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
