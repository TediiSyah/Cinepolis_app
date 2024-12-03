import 'package:flutter/material.dart';
import 'package:ukl_tedii/widget/button_nav.dart';

class BokingView extends StatefulWidget {
  const BokingView({super.key});

  @override
  State<BokingView> createState() => _BokingViewState();
}

class _BokingViewState extends State<BokingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'My Booking',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text('There no active booking!'),
              trailing: Icon(Icons.timer_outlined),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 96, 96, 96),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('GDlandscape.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Text Serena dan Song for Revenge
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gladiator II',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            'D17+   ',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                backgroundColor:
                                    const Color.fromARGB(255, 222, 222, 222)),
                          ),
                          Text(
                            ' Action, Adventure',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            ' 9.0',
                            style: TextStyle(),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 96, 96, 96),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('RedOne1.png'), fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Text Serena dan Song for Revenge
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RED ONE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            'D13+   ',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 39, 39, 39),
                                fontSize: 12,
                                backgroundColor:
                                    const Color.fromARGB(255, 222, 222, 222)),
                          ),
                          Text(
                            ' Action, Adventure',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            ' 8.0',
                            style: TextStyle(),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(1),
    );
  }
}
