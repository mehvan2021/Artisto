import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/component/colors.dart';
import 'package:flutter_artisto/src/PublisherBio.dart';

class PublisherList extends StatelessWidget {
  var index;

  Color _post_color = Color.fromARGB(255, 81, 71, 71);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.82,
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
                  height: 166,
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
                                height: 122,
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
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 17.0),
                                          ),
                                          Text(
                                            //  mockData[index]["profileImage"] .toString(),
                                            "Los Angeles",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 17.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                            builder: (context) => PublisherBio(
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
                                                  child: Container(),
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
                                SizedBox(
                                  width: 15,
                                ),

                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 222,
                                          height: 22,
                                          child: Row(
                                            children: [
                                              Text(
                                                //  mockData[index]["singer_name"].toString(),
                                                _Bids[index].singer_name,

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
                                                "Los Angelos",

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
                                            builder: (context) => PublisherBio(
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
                Container(
                  //was for hello

                  height: 65,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
