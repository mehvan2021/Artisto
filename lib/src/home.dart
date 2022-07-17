import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/src/ADInfo.dart';
import 'package:flutter_artisto/src/BidgInfo.dart';
import 'package:flutter_artisto/src/PublisherList.dart';
import 'package:flutter_artisto/src/PublisherBio.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ArtistosHomeScreenView extends StatelessWidget {
  const ArtistosHomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _post_color = Color.fromARGB(255, 81, 71, 71);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                  title: Text('about us'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/about');
                  })
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Artisto',
            style: TextStyle(
                color: Color.fromARGB(255, 238, 234, 234),
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.red,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.list, size: 30, color: Colors.white),
            Icon(Icons.add, size: 30, color: Colors.white),
            Icon(Icons.settings, size: 30, color: Colors.white),
          ],
          onTap: (index) {
            //Handle button tap
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PublisherList()),
              );
            }
          },
        ),
        body: Column(
          children: [
            Container(
              height: 160,
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
                                        "city  /  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(179, 0, 0, 0),
                                            fontSize: 17.0),
                                      ),
                                      Text(
                                        //  mockData[index]["profileImage"] .toString(),
                                        "Los Angeles",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(179, 0, 0, 0),
                                            fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PublisherList()),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 52,
                          ),

                          SizedBox(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
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
                                              color:
                                                  Color.fromARGB(179, 0, 0, 0),
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
                                        builder: (context) => ADInfo(
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
            Container(
                height: 25,

                //is for menu
                child: Row(
                  children: [
                    SizedBox(
                      width: 75,
                    ),
                    Container(
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 250, 117, 117),
                              width: 2.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(child: Text('All'))),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 91, 2, 194),
                              width: 2.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(child: Text('Songs'))),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 91, 2, 194),
                              width: 2.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(child: Text('Melody'))),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 91, 2, 194),
                              width: 2.0,
                              style: BorderStyle.solid),
                        ),
                        child: Center(child: Text('Lyrics'))),
                  ],
                )),
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
                            right: BorderSide(color: _post_color, width: 5)),
                        color: Color.fromARGB(255, 231, 231, 231),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 132,
                                width: 100,
                                child: InkWell(
                                  child: ListView(
                                    children: [
                                      Container(
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
                                              child: Container(
                                                  child: Text(
                                                _Bids[index].singer_name,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        179, 0, 0, 0),
                                                    fontSize: 14.0),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PublisherBio(
                                                  // before using model   index: index,
                                                  Bids: _Bids[index],
                                                )));
                                  },
                                ),
                              ),
                            ),
//space between container photo and subject
                            SizedBox(
                              width: 15,
                            ),

                            InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 210,
                                      height: 22,
                                      child: Row(
                                        children: [
                                          Text(
                                            //  mockData[index]["singer_name"].toString(),
                                            _Bids[index].subject,

                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 17.0),
                                          ),
                                          Text(
                                              //  mockData[index]["singer_name"].toString(),
                                              ' / '),
                                          Text(
                                            //  mockData[index]["singer_name"].toString(),
                                            _Bids[index].type,

                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 17.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 210,
                                      height: 85,
                                      child: Text(
                                        //  mockData[index]["first_bid"].toString(),
                                        _Bids[index].song_lyrics,
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.ellipsis,

                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
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
                                        builder: (context) => BidgInfo(
                                              // before using model   index: index,
                                              Bids: _Bids[index],
                                            )));
                              },
                            ),
// bid list

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 193, 196, 202),
                                      width: 44,
                                      height: 22,
                                      child: Center(
                                        child: Text(
                                          //  mockData[index]["singer_name"].toString(),
                                          'Bids',

                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(179, 0, 0, 0),
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 85, 223, 244),
                                      width: 44,
                                      height: 22,
                                      child: Center(
                                        child: Text(
                                          //  mockData[index]["singer_name"].toString(),
                                          _Bids[index].first_bid,

                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(179, 0, 0, 0),
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 85, 138, 244),
                                      width: 44,
                                      height: 22,
                                      child: Center(
                                        child: Text(
                                          //  mockData[index]["first_bid"].toString(),
                                          _Bids[index].first_bid,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(179, 0, 0, 0),
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 247, 76, 76),
                                      width: 44,
                                      height: 22,
                                      child: Center(
                                        child: Text(
                                          //  mockData[index]["first_bid"].toString(),
                                          _Bids[index].done_bid,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(179, 0, 0, 0),
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 5,
                                    ),
                                  ),
                                ],
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
            ),
            //       Container(
            //       height: 65,
            //     color: Colors.red,
            // )
          ],
        ),
      ),
    );
  }
}

Color _Kflag = Colors.red;
Color _Header = Color.fromARGB(255, 41, 189, 4);

void whichStarColor() {
  if (_Header == _Kflag) {
    setState(() {});
  }
}

void setState(Null Function() param0) {}
