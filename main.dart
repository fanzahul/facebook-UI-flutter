import 'package:flutter/material.dart';
import 'package:facebook/facebookpostcard.dart';
import 'package:facebook/userstories.dart';
import 'create.dart';

void main() => runApp(new MyApp());

var postImages = {
  0: "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/35745589_1804975606206905_4159570672491692032_n.jpg?_nc_cat=104&_nc_eui2=AeGv95KY4jDdymiCBPo5dqkFTNBHyDn6lneWPyAVQkKwhyqX_c2GVBwatTCeyCLGb8LAj0-GVqnE2yLBOezNWU69YRmmQCa5mfrLn6CsfodksA&_nc_oc=AQkKtMVpo7lXlCDAbQiiiRnTVUX9H4n1NYnZbCtl5fCvvQWzUeaE4iE2FRvsqLRetrM&_nc_ht=scontent.fcgk18-2.fna&oh=a2db3615f0d512d1e0b2ca97900fecc6&oe=5DA46737",
  1: "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/11070100_867334046663180_5699192967819476509_n.jpg?_nc_cat=110&_nc_eui2=AeEdTgYk7oJCPTQhNhKbeNmfEbRQvQ0CPLt8ebdU29Ml9KdFf-wu4pVpxcSF8efcYHgnawl5x_DmnKZ4e9lChZc4r_5R1wIfVyWP84G7PK2b2g&_nc_oc=AQn2qtVJ-UOVyrOPKsuEGVoN1gqiW-tJf794AyJJC2DHu-aEGGyp7rvRqrBJxW5dq1o&_nc_ht=scontent.fcgk18-2.fna&oh=ef742b1bcc146e637c033205f1bad9aa&oe=5DA73A50",
  2: "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/12417629_10204098951512514_7131911953815453188_n.jpg?_nc_cat=100&_nc_eui2=AeHoGPNa78R-3awkDZfZ9mL9zeLW5jf4dIln5BNVIjVK1WRlae6GyvdYHFVj7xblao41zkkPGrkZCF9_Y7a79co_wI6sWN6pvsaM9zXkG5oGdA&_nc_oc=AQntNg-KEQW1swd-chYc2gLHdhAikmOon67ox6s0UjI5nxUIShkGIUZWtV_pbBta4NI&_nc_ht=scontent.fcgk18-2.fna&oh=9914981bd32d6afaa2391a5c411c83c5&oe=5DEBB607",
  3: "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/22310507_10203713751681039_5543588506110903352_n.jpg?_nc_cat=110&_nc_eui2=AeFhuHbGywIAuDKjHwagznhO068VQJ85zdOAjbiR2CsnYDPITCImRItew7clQzeZdjV65xZuDTYr5BzKd2Ys2sit32a7LqDP8SffNE9iOS_iEw&_nc_oc=AQkoyjP5PH3NkV4M32YNcbmpZeO7uquz809e518m2y4MucLd_asEeLBm68U1sdMkEio&_nc_ht=scontent.fcgk18-2.fna&oh=0d7082d532abda4f4b2135fce78d041d&oe=5DEB1F91",
  4: "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/13782292_890038507768660_7367175088476191831_n.jpg?_nc_cat=100&_nc_eui2=AeEwcYAc7NtjFD4G-sgJ6KznWl3chMgUt7oaYhZT-N1iBEt9ZIyXVXa1c9ay5CU0CiwCEd4waO7zOj4aQb4HW7fg_vhjf0mHDFxc_bFpS0GQXQ&_nc_oc=AQkaxEaucFT7e_HBqP9NeFBpMAJvrPltsJAkOfMRoqcJcR_CYtC7uMPgakl0u-whTKg&_nc_ht=scontent.fcgk18-2.fna&oh=f43a4c4971539533fa0906f9087372a3&oe=5DB2D79F"
};

var postNames = {
  0: "Diah Kartika WD",
  1: "Raudha Anggraini Trg",
  2: "Fahmi Adi Sasmito",
  3: "Shabirah Inas",
  4: "Dhea Hanara"
};

var postContents = {
  0: "Flutter is so amazing! I am loving it.",
  1: "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time.",
  2: "Flutter is so amazing! I am loving it.",
  3: "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time.",
  4: "Flutter has blown my mind!"
};
var postTimes = {
  0: "10 mins ago · ",
  1: "20 mins ago · ",
  2: "1 hour ago · ",
  3: "1 hour ago · ",
  4: "2 hours ago ·",
};
var postLikes = {
  0: "Dhea and 6 others",
  1: "Fahmi and 16 others",
  2: "Mia and 6 others",
  3: "Raudha and 16 others",
  4: "Inas and 46 others"
};
var postComments = {0: "12", 1: "24", 2: "16", 3: "34", 4: "46"};
var postShares = {0: "1", 1: "2", 2: "3", 3: "2", 4: "2"};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Facebook UI Clone',
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  getTabs() {
    return new Container(
      padding: new EdgeInsets.symmetric(vertical: 4.0),
      decoration: new BoxDecoration(
        border: const Border(
          top: const BorderSide(width: 0.0),
          left: const BorderSide(width: 0.0),
          right: const BorderSide(width: 0.0),
          bottom: const BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Icon(
              const IconData(0xe904, fontFamily: 'icomoon'),
              color: Color(0xff3b5998),
            ),
          )),
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Icon(
              const IconData(0xe972, fontFamily: 'icomoon'),
              color: Color(0xff3b5998),
            ),
          )),
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Icon(
              const IconData(0xe971, fontFamily: 'icomoon'),
              color: Color(0xff3b5998),
            ),
          )),
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Stack(
              alignment: Alignment.center,
              children: [
                new Icon(
                  const IconData(0xe951, fontFamily: 'icomoon'),
                  color: Color(0xff3b5998),
                ),
                new FractionalTranslation(
                  translation: Offset(0.6, -0.5),
                  child: new CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: new Text(
                      "1",
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
          new Expanded(
              child: new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Icon(
              const IconData(0xe9BD, fontFamily: 'icomoon'),
              color: Color(0xff3b5998),
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff3b5998),
        elevation: 0.0,
        leading: new Icon(
          Icons.camera_alt,
        ),
        title: new TextField(
          decoration: new InputDecoration(
              prefixIcon: new Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: Color(0xff8b9dc3))),
        ),
        actions: <Widget>[
          new Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: new Icon(const IconData(0xe96d, fontFamily: 'icomoon')),
          )
        ],
        bottom: new PreferredSize(
          child: new Container(color: Colors.white, child: getTabs()),
          preferredSize: const Size.fromHeight(50.0),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          CreatePost(),
          Card(
            child: UserStories(),
          ),
          FacebookPostCard(
              image: postImages[0],
              content: postContents[0],
              name: postNames[0],
              likes: postLikes[0],
              comments: postComments[0],
              shares: postShares[0],
              time: postTimes[0]),
          FacebookPostCard(
              image: postImages[1],
              content: postContents[1],
              name: postNames[1],
              likes: postLikes[1],
              comments: postComments[1],
              shares: postShares[1],
              time: postTimes[1]),
          FacebookPostCard(
              image: postImages[2],
              content: postContents[2],
              name: postNames[2],
              likes: postLikes[2],
              comments: postComments[2],
              shares: postShares[2],
              time: postTimes[2]),
          FacebookPostCard(
              image: postImages[3],
              content: postContents[3],
              name: postNames[3],
              likes: postLikes[3],
              comments: postComments[3],
              shares: postShares[3],
              time: postTimes[3]),
          FacebookPostCard(
              image: postImages[4],
              content: postContents[4],
              name: postNames[4],
              likes: postLikes[4],
              comments: postComments[4],
              shares: postShares[4],
              time: postTimes[4]),
        ],
      ),
    );
  }
}
