import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/component/colors.dart';

class ADInfo extends StatelessWidget {
  var index;

  ADInfo({
    Key? key,
    required this.Bids,
  }) : super(key: key);
  Color _post_color = Color.fromARGB(255, 81, 71, 71);

  final mockData2 Bids;

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
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          "Music Studio",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          Bids.song_lyrics,
                          textAlign: TextAlign.justify,
                        ),
                      ],
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
