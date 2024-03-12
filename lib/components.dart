import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Images {
  //trophy , restaurant_rewards , ice_Cream , idli
  Widget trophy() {
    return Container(
      child: Image(
        image: AssetImage('images/Trophy.png'),
      ),
    );
  }

  Widget restaurant_rewards() {
    return Container(
      child: Image(
        image: AssetImage('images/Res-Awards.png.png'),
      ),
    );
  }

  Widget ice_cream() {
    return Image(
      image: AssetImage('images/Ice-cream.png'),
      height: 100,
    );
  }

  Widget idli() {
    return Image(
      image: AssetImage('images/Food.png'),
      height: 100,
      width: 100,
    );
  }
}

class Buttons {
  //toggle_button , back_button , share_button , vote_now
  Widget toggle_button() {
    return DecoratedBox(
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
    );
  }

  Widget back_button() {
    return Container(
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
        ));
  }

  Widget share_button() {
    return Container(
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
        ));
  }

  Widget vote_now() {
    return Padding(
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
    );
  }
}

class Texts {
  // flavor_meets_fame , live_leading
  Widget flavor_meets_fame() {
    return Container(
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
    );
  }

  Widget live_leading() {
    return Container(
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
    );
  }
}

class Containers_Decors {
  //grid_decor , sized_box
  BoxDecoration grid_decor() {
    return BoxDecoration(
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
    );
  }

  Widget sized_box(double h, double w) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
