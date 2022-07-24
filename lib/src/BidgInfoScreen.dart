import 'package:flutter/material.dart';
import 'package:flutter_artisto/Mockdata/mock_model.dart';
import 'package:flutter_artisto/Mockdata/mock_data.dart';
import 'package:flutter_artisto/component/colors.dart';

class BidgInfo extends StatelessWidget {
  var index;

  BidgInfo({
    Key? key,
    required this.Bids,
  }) : super(key: key);

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
                  height: 15,
                ),
                Container(
                  height: 222,
                  child: Image.asset(Bids.profileImage),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        Bids.singer_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color:
                                      index == 4 ? Colors.grey : Colors.orange,
                                )).toList().cast<Widget>(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        Bids.subject,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(Bids.type),
                      const SizedBox(height: 10),
                      Text(
                        Bids.song_lyrics,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          color: Color.fromARGB(255, 193, 196, 202),
                          width: 44,
                          height: 22,
                          child: Center(
                            child: Text(
                              //  mockData[index]["singer_name"].toString(),
                              "Bids",

                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(179, 0, 0, 0),
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
                              Bids.first_bid,

                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(179, 0, 0, 0),
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
                              Bids.first_bid,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(179, 0, 0, 0),
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
                              Bids.done_bid,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(179, 0, 0, 0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
