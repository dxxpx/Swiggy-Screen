import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components.dart';

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

List<String> Votes = ['14.2k', '12.1k'];
List<String> Foods = ['Ice-Creams', 'South Indian Food'];
List<String> Cities = ['Chennai', 'Puducherry', 'Kanchipuram'];
String? SelectedValue = 'Chennai';

// class Food {
//   int itemNum = 0;
//   Widget? foodimage;
//
//   Food(int itemNum, Widget fimage) {
//     this.itemNum = itemNum;
//     this.foodimage = fimage;
//   }
//
//   Widget layout() {
//     return Container(
//       decoration: cnd.grid_decor(),
//       child: Column(
//         children: [
//           foodimage?? Container(),
//           Text(Foods[itemNum] ?? ' ',
//               style: TextStyle(fontWeight: FontWeight.bold)),
//           Text(Votes[itemNumber] ?? ' '),
//           btns.vote_now(),
//         ],
//       ),
//     );
//   }
// }
// List<Food> Category=[
//   Food(0, imgs.ice_cream()),
//   Food(1, imgs.idli())
// ];

class _MyHomepagestate extends State<MyHomepage> {
  static Images imgs = Images();
  static Buttons btns = Buttons();
  static Containers_Decors cnd = Containers_Decors();
  static Texts txt = Texts();
  static var itemNumber = 0;

  List<Container> food_grid = [
    Container(
      decoration: cnd.grid_decor(),
      child: Column(
        children: [
          imgs.ice_cream(),
          Text(Foods[itemNumber],
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text(Votes[itemNumber]),
          btns.vote_now(),
        ],
      ),
    ),
    Container(
      decoration: cnd.grid_decor(),
      child: Column(
        children: [
          imgs.idli(),
          Text(
            Foods[itemNumber + 1],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(Votes[itemNumber + 1]),
          btns.vote_now(),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [btns.back_button()],
        leading: btns.share_button(),
      ),
      body: Container(
        color: Colors.white38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imgs.restaurant_rewards(),
            txt.flavor_meets_fame(),
            imgs.trophy(),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              alignment: Alignment.center,
              icon: Icon(CupertinoIcons.chevron_down),
              value: SelectedValue,
              items: Cities.map((e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                    ),
                  )).toList(),
              onChanged: (e) => setState(() {
                SelectedValue = e;
              }),
            ),
            txt.live_leading(),
            btns.toggle_button(),
            cnd.sized_box(09, 0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                food_grid[itemNumber],
                cnd.sized_box(0, 40),
                food_grid[itemNumber + 1],
              ],
            )
          ],
        ),
      ),
    );
  }
}
