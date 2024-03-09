import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  _MyHomepagestate createState() => _MyHomepagestate();
}

class _MyHomepagestate extends State<MyHomepage> {
  List<String> Cities = ['Chennai', 'Puducherry', 'Kanchipuram'];
  String? SelectedValue = 'Chennai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: IconButton(
                  icon: Icon(CupertinoIcons.share_up),
                  onPressed: () {},
                ))
          ],
          leading: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ))),
      body: Container(
        color: Colors.white38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(
                image: AssetImage('images/Res-Awards.png.png'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.05),
                  border: Border(
                      top: BorderSide(color: Colors.black, width: 0.3),
                      bottom: BorderSide(color: Colors.black, width: 0.3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(6, 0),
                    )
                  ]),
              child: Text('+ FLAVOUR MEETS FAME +'),
            ),
            Container(
              child: Image(
                image: AssetImage('images/Trophy.png'),
              ),
            ),
            //DROPDOWNLIST
            Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.3,
                    )),
                child: DropdownButton<String>(
                  value: SelectedValue,
                  items: Cities.map((e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(
                          e,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18),
                        ),
                      )).toList(),
                  onChanged: (e) => setState(() {
                    SelectedValue = e;
                  }),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text('Live'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: true,
                        'Anand Bhavan is currently leading the vote count in the Restaurant Awards of 2024'),
                  )
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ToggleSwitch(
                  minWidth: 190.0,
                  cornerRadius: 20,
                  animationDuration: 1300,
                  initialLabelIndex: 0,
                  customTextStyles: [TextStyle(color: Colors.white)],
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  activeFgColor: Colors.brown,
                  activeBgColor: [Colors.black87],
                  labels: ['Food Delivery', 'Dineout'],
                  onToggle: (index) {},
                ),
              ),
            ), //ToggleButton
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/Ice-cream.png'),
                        height: 100,
                      ),
                      Text('Ice-Creams',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('14.2k'),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FloatingActionButton.extended(
                          backgroundColor: Colors.black,
                          label: Text(
                            'Vote Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/Food.png'),
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'South Indian Food',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('12.1k'),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FloatingActionButton.extended(
                          backgroundColor: Colors.black,
                          label: Text(
                            'Vote Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            CupertinoIcons.arrow_right,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
