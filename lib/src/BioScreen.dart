import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/component/colors.dart';
import 'package:flutter_artisto/src/BidgInfoScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

_openLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _openWhatsAppCaht() async {
  String PhoneNumber = '009647507514274';
  var url = 'https:/wa.me/$PhoneNumber?text=Hellooo';
// ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    print('error');
    throw 'Error Occured';
  }
}

_launchSMS(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class PublisherBio extends StatelessWidget {
  var index;

  PublisherBio({
    Key? key,
    required this.Bids,
  }) : super(key: key);

  final mockData2 Bids;

  Color _post_color = Color.fromARGB(255, 81, 71, 71);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 120,
                        child: Image.asset(Bids.profileImage),
                      ),
                      Container(
                        width: 170,
                        height: 44,
                        child: Center(
                          child: Text(
                            Bids.singer_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 15,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                _openWhatsAppCaht();
                              },
                              child: Container(
                                width: 33,
                                height: 25,
                                child: Icon(
                                  color: Color.fromARGB(255, 64, 205, 83),
                                  size: 22,
                                  FontAwesomeIcons.whatsapp,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _launchEmail(
                                    'mailto:Mehvanmahmood@gmail.com?subject=Hello Mehvan&body=New%20plugin');
                              },
                              child: Container(
                                width: 33,
                                height: 25,
                                child: Icon(
                                  color: Color.fromARGB(255, 204, 206, 203),
                                  size: 22,
                                  Icons.mail_outlined,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                //Navigator.push(
                                // context,
                                //MaterialPageRoute(
                                // builder: (context) => MessageView(),
                                // ),
                                //  );
                              },
                              child: Container(
                                width: 33,
                                height: 25,
                                child: Icon(
                                  color: Color.fromARGB(255, 35, 224, 193),
                                  size: 22,
                                  Icons.chat_outlined,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 175,
                    width: 175,
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        Bids.singer_bio,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 13.0),
                      ),
                    ),
                  ),
                ],
              ),

              //is for list view of Bids
              Expanded(
                child: Container(
                  //is for list view of Bids
                  child: ListView.builder(
                    itemCount: 1,
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
                          color: Color.fromARGB(255, 245, 245, 245),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 132,
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
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                                child: Text(
                                              _Bids[index].singer_name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      179, 0, 0, 0),
                                                  fontSize: 12.0),
                                            )),
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
                                ),
                              ),
//space between container photo and subject

                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 150,
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
                                                  fontSize: 15.0),
                                            ),
                                            Text(
                                                //  mockData[index]["singer_name"].toString(),
                                                ' / '),
                                            Text(
                                              //  mockData[index]["singer_name"].toString(),
                                              _Bids[index].type[0],

                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: _post_color,
                                                  fontSize: 15.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 150,
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
                                          width: 5,
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
                                        color:
                                            Color.fromARGB(255, 193, 196, 202),
                                        width: 40,
                                        height: 22,
                                        child: Center(
                                          child: Text(
                                            //  mockData[index]["singer_name"].toString(),
                                            'Bids',

                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 85, 223, 244),
                                        width: 40,
                                        height: 22,
                                        child: Center(
                                          child: Text(
                                            //  mockData[index]["singer_name"].toString(),
                                            _Bids[index].first_bid,

                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 85, 138, 244),
                                        width: 40,
                                        height: 22,
                                        child: Center(
                                          child: Text(
                                            //  mockData[index]["first_bid"].toString(),
                                            _Bids[index].first_bid,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        color: Color.fromARGB(255, 247, 76, 76),
                                        width: 40,
                                        height: 22,
                                        child: Center(
                                          child: Text(
                                            //  mockData[index]["first_bid"].toString(),
                                            _Bids[index].done_bid,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    179, 0, 0, 0),
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(),
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

              // container Banner
              // container Banner End ------
              Container(
                //was for hello

                height: 65,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
