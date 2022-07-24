import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/component/colors.dart';
import 'package:flutter_artisto/src/BioScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class PublisherList extends StatelessWidget {
  var index;

  Color _post_color = Color.fromARGB(255, 81, 71, 71);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'User List',
          style: TextStyle(
              color: Color.fromARGB(255, 238, 234, 234),
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: 1,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
          if (index == 0) {
            Navigator.of(context).pushNamed('/');
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/PublisherList');
          } else if (index == 3) {
            Navigator.of(context).pushNamed('/Setting');
          }
        },
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 15,
                  ),
                  Container(
                    height: 170,
                    //is for list view of Bids
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        List<mockData2> _Bids = mockData.map(
                          (element) {
                            return mockData2.fromJson(element);
                          },
                        ).toList();

                        return Container(
                          padding: EdgeInsets.all(10),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                side: BorderSide(width: 1, color: Colors.red)),
                            color: Color.fromARGB(255, 231, 231, 231),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 130,
                                  child: InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              //  mockData[index]["profileImage"] .toString(),
                                              "city / ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      179, 0, 0, 0),
                                                  fontSize: 15.0),
                                            ),
                                            Text(
                                              //  mockData[index]["profileImage"] .toString(),
                                              "Los Angeles",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      179, 0, 0, 0),
                                                  fontSize: 15.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),

                                SizedBox(
                                  width: 137,
                                  child: InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        shadowColor: Colors.blueAccent,
                                        elevation: 4,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 88,
                                              child: Image.asset(
                                                //  mockData[index]["profileImage"] .toString(),
                                                "assets/images/DLMUSIC.png",
                                              ),
                                            ),
                                            Container(
                                              height: 22,
                                              child: Text(
                                                //  mockData[index]["profileImage"] .toString(),
                                                "DL Music Co.  ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        179, 0, 0, 0),
                                                    fontSize: 14.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PublisherBio(
                                                    // before using model   index: index,
                                                    Bids: _Bids[index],
                                                  )));
                                    },
                                  ),
                                ),

                                //TODO: navigato to details screen
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //is for list view of Bids
                      child: ListView.builder(
                        itemCount: mockData.length,
                        itemBuilder: (context, index) {
                          List<mockData2> _Bids = mockData.map(
                            (element) {
                              return mockData2.fromJson(element);
                            },
                          ).toList();
                          if (_Bids[index].type == 'Lyrics') {
                            _post_color = Color.fromARGB(255, 222, 30, 16);
                          } else {
                            _post_color = Color.fromARGB(255, 39, 2, 170);
                          }
                          return Container(
                            padding: EdgeInsets.all(3),
                            child: Card(
                              elevation: 5,
                              shape: Border(
                                  right:
                                      BorderSide(color: _post_color, width: 5)),
                              color: Color.fromARGB(255, 245, 245, 245),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 130,
                                      width: 100,
                                      child: InkWell(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 90,
                                                child: Image.asset(
                                                  _Bids[index].profileImage,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PublisherBio(
                                                        // before using model   index: index,
                                                        Bids: _Bids[index],
                                                      )));
                                        },
                                      ),
                                    ),
                                  ),
                                  //space between container photo and subject

                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 170,
                                            height: 22,
                                            child: Row(
                                              children: [
                                                Text(
                                                  //  mockData[index]["singer_name"].toString(),
                                                  _Bids[index].singer_name,

                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          179, 0, 0, 0),
                                                      fontSize: 15.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 170,
                                            height: 85,
                                            child: Text(
                                              //  mockData[index]["first_bid"].toString(),
                                              _Bids[index].singer_bio,
                                              textAlign: TextAlign.justify,
                                              overflow: TextOverflow.ellipsis,

                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                              maxLines: 5,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PublisherBio(
                                                    // before using model   index: index,
                                                    Bids: _Bids[index],
                                                  )));
                                    },
                                  ),
                                  // bid list

                                  //TODO: navigato to details screen
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  //  Container(              //was for hello
                  //    height: 65,              color: Colors.red,
                  //  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
