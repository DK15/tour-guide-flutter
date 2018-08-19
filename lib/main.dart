import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATG',
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/screen2': (BuildContext context) => new Screen2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget phoneSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Text(
                    'Welcome To Aurangabad City',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = RaisedButton(
      child: const Text('Lets Take a Tour'),
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Theme.of(context).accentColor,
      elevation: 4.0,
      splashColor: Colors.blueGrey,
      onPressed: () {
        Navigator.of(context).pushNamed('/screen2');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Guide'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/bkm.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          phoneSection,
          buttonSection,
        ],
      ),
    );
  }

  void button1(BuildContext context) {
    Navigator.of(context).pushNamed('/screen2');
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back,color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: new TabBar(
              isScrollable: true,
              tabs: <Widget>[
                new Tab(text: 'Places', icon: Icon(Icons.local_activity)),
                new Tab(text: 'Parks', icon: Icon(Icons.local_parking)),
                new Tab(text: 'Food', icon: Icon(Icons.local_dining)),
                new Tab(text: 'Lodging', icon: Icon(Icons.local_hotel)),
              ],
            ),
          ),
          body: new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(child: new TabBarView(
                  children: <Widget>[
                    new ListView(
                      children: list1,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list2,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list3,
                      scrollDirection: Axis.vertical,
                    ),
                    new ListView(
                      children: list4,
                      scrollDirection: Axis.vertical,
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

List<Widget> list1 = <Widget>[
  new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/bkm.png',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Bibi Ka Maqbara',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Bibi Ka Maqbara is a tomb and was commissioned by Auranzebs son Azam in memory of his mother. It bears striking resemblance to famous Taj Mahal. This tomb is principal monument of Aurangabad'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/ellora.png',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Ajanta Ellora Caves',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'These caves are 29 rock Buddhist monuments which date from 2nd century. The paintings and rock cut sculptures are described as among the finest surviving examples of ancient Indian art.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/mhml.png',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
      title: new Text('Mhaismal',
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: new Text(
          'Mhaismal is a beautiful hill station in Aurangabad situated at an altitude of 1067 meters and is about 40km from the city. This hill station attracts visitors during monsoon when it is covered in greenery.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Image.asset(
      'images/bm.png',
      height: 100.0,
      width: 50.0,
      fit: BoxFit.cover,
    ),
  ),
  new ListTile(
    title: new Text('Bhadra Maruti Temple',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'This is a temple devoted to Hindu deity Hanuman. Here the idol of Hanuman is portrayed in a reclining or sleeping posture. It is one of the only 3 places where Hanuman is represented in sleeping posture. People from city and nearby places walk to the temple ot offer prayers on Saturdays.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
];
List<Widget> list2 = <Widget>[

  new ListTile(
    title: new Text('Siddharth Garden',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Set in the heart of the city, Siddharth Garden is beautiful and well-known for housing wide variety of trees and shrubs. Covering a large area, it is popular picnic spot. There is a small aquarium in the garden having variety of fishes. It has also a zoo having tigers, lions, leopards, fox, hyena, deer etc.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),

  new ListTile(
    title: new Text('Jayakwadi Dam',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Jayakwadi is one of the largest earthern dams is Asia. Its height is approx. 41.30 meters and length 9998 meters with total storage capacity of 2909 mcm. There are total 27 water gates for the dam.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('University Hill',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'This hill is a small hillside location and is famous for its serene and tranquil environment. The sunset from top of the hill is really a lovely sight. The visitor have to hike to reach top of the hill. Visitors get a panoramic view of entire Aurnagabad city.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
];
List<Widget> list3 = <Widget>[
  new ListTile(
    title: new Text('Latitude',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'All day dining restaurant is popular for its multi-cuisine and wellness menu.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('Madhuban',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Offers fine dine, lounge bar room, open terrace, party lawn, kids zone. Tastefully refurbished to include latest in business and state of the art facilities.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('Te Amo',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'A pure veg, multi-cuisine fine dine restaurant. It boasts of beautiful ambience alongwith experienced chefs and service personnel.'),

  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('Thaat Baat',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Veg thali restaurant famous for Rajasthani, Gujrati and Maharashtrian food. The place has festive look with real silver plates. The wait staff wears traditional attire with colored turbans.'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
];
List<Widget> list4 = <Widget>[
  new ListTile(
    title: new Text('Vivanta By Taj',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Featuring free wi-fi and restaurant, guests can enjoy on-site bar. A balcony and patio are featured in certain rooms. This hotel also provides car rental.'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('Rama International',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Offers free private parking alongwith free wi-fi and a restaurant. Every room is air conditioned and has flat screen TV. 24 hour front desk and hairdresssers at the property.'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,),
  new ListTile(
    title: new Text('Lemon Tree',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text(
        'Offers on-site restaurant and 24 hour front desk. Provides car rental service and nearest to Aurangabad airport.'),
  ),
  new Divider(
    height: 8.0,color: Colors.blue,)
];

