import 'package:flutter/material.dart';

class UserStories extends StatelessWidget {

  final List images = [
    "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/40421165_1947104125352828_4233892762266632192_n.jpg?_nc_cat=100&_nc_eui2=AeEd7Ci5vzqVQutRfKtC3tjEhIEH6yGtnVCc1zVaamTaZhg-2fGkj_9a6Tw7YIQAmjA6oWJWiI-qpa24_8ZCtbTf4HR-gudD6WT64Y-uZB083A&_nc_oc=AQkkbBlxTj5Kk1rw78eFkS79nYEbI7cYTf2B8CFZ36ZruAbakviKnq6IfqvYnXp46u0&_nc_ht=scontent.fcgk18-2.fna&oh=7f406fa5dea87ce8bd1376c327308f5d&oe=5DA80E39",
    "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/35745589_1804975606206905_4159570672491692032_n.jpg?_nc_cat=104&_nc_eui2=AeGv95KY4jDdymiCBPo5dqkFTNBHyDn6lneWPyAVQkKwhyqX_c2GVBwatTCeyCLGb8LAj0-GVqnE2yLBOezNWU69YRmmQCa5mfrLn6CsfodksA&_nc_oc=AQkKtMVpo7lXlCDAbQiiiRnTVUX9H4n1NYnZbCtl5fCvvQWzUeaE4iE2FRvsqLRetrM&_nc_ht=scontent.fcgk18-2.fna&oh=a2db3615f0d512d1e0b2ca97900fecc6&oe=5DA46737",
    "https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.0-9/12717220_10204218856030052_8423717355419413623_n.jpg?_nc_cat=105&_nc_eui2=AeFFQK6zwa2C5ZZCqkkIs0ytI7YpijE9P4yGNhDwfSkq6aEfXdXfPdR8khw1-1lcA7tuJzKleCG5rgv7zf1ThLCZS3Lwuxv5TIvhJ1oUMdbOWA&_nc_oc=AQk6PBpsk4CzLxK408-qi2a79KtOtvHC1uj6M5iLCWyMbtfG2_ca0KkJd249hFWJfRA&_nc_ht=scontent.fcgk18-1.fna&oh=9208e82600c0bb0f4ba64a43e3420f1f&oe=5DA0E968",
    "https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.0-1/c0.0.890.890a/50879317_10205393336709615_7475898488635523072_n.jpg?_nc_cat=105&_nc_eui2=AeFZnBI2X6VF449KdhgBEBPBEBWBNQh42Egwg3R4453A1csEEtvMxKrXqvLlHZbFN1de9y2Djlpv5kukqrCe1EnbWW47tsWpSp3T_dl9txZfmw&_nc_oc=AQnBeMLTZknSTa65yAi5tjcX-P-Y_19-NN753ozUcTlI1tkuld5UYkIih5aSkPZuK2I&_nc_ht=scontent.fcgk18-1.fna&oh=9088ddbe782fae97c9e5bc4e50aadfa7&oe=5DB44949",
    "https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.0-9/15781078_1026016817504161_1568004050335471731_n.jpg?_nc_cat=111&_nc_eui2=AeH34vV8KLvHgiljKEPa25Zw385mdMo3MjOh0D77H9oZX8PCNeuOn4ug9NNyh4ggCuZ6W7P2hRA-fnluq9ya4oPrwf3T6BzNZ3Sp-dtRPIJmNA&_nc_oc=AQl8rGi-XxBFdRFkqTgGCQZ6iiSQv10293cxWjjjxCatMhJGi5Km249hVB3S98Tv5WA&_nc_ht=scontent.fcgk18-1.fna&oh=99ced401466a6bf8493f736fa93b89b0&oe=5DE685D6",
    "https://scontent.fcgk18-2.fna.fbcdn.net/v/t1.0-9/28795504_2057938497553990_1467250951888796517_n.jpg?_nc_cat=110&_nc_eui2=AeHo_bXo-wc90kw8tb1OVmy5YTJ3a2WzVPJzseZKSH7r7nLJip0X6at6EkjmlsbSiYFXirOdeKfa-CybCmH3OoLnNmaT_PtF46S3yWSG6D41iA&_nc_oc=AQk-NzVih6RbEo7emO2CvQ1OpAIZkdrN3ar6YOdhWMR5eG9G2IYwyrrn_CaktFMxZk0&_nc_ht=scontent.fcgk18-2.fna&oh=41b25e49d4896ce9a0f711e12a2505cf&oe=5DE5C1BD",
  ];

  final List names = [
    "Add",
    "Wulan",
    "Inas",
    "Dhea",
    "Raudha",
    "Fahmi",
  ];


  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    "Stories",
                    style:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Icon(Icons.play_arrow),
                      new Text(
                        "Stories",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  )
                ]),
          ),
          new Expanded(
            child: Container(
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => new Container(
                  alignment: Alignment.topCenter,
                  child: new Column(
                    children: <Widget>[
                      new Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(images[index])
                                ),
                              ),
                              //margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                          ),
                          index == 0
                              ? Positioned(
                              right: 10.0,
                              top: 10.0,
                              child: new FractionalTranslation(
                                translation: Offset(0.2, -0.2),
                                child: new CircleAvatar(
                                  backgroundColor: Color(0xff3b5998),
                                  radius: 15.0,
                                  child: new Icon(
                                    Icons.add,
                                    size: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                              : new Container(),
                          index != 0
                              ? Positioned(
                            right: 10.0,
                            top: 10.0,
                            child: new FractionalTranslation(
                              translation: Offset(0.2, 1.2),
                              child: new CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                                child: new Container(
                                  width: 26.0,
                                  height: 26.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(images[index]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                              : new Container()
                        ],
                      ),

                      Text(
                          names[index],
                        style: TextStyle(
                          fontSize: 12.0
                        ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
