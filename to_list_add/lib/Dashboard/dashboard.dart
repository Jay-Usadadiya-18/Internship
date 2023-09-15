import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:to_list_add/List/college_Screen/screen/first_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DashBoard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      drawer: Drawer(
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Oflutter.com'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: ClipOval(
                  child: Image.asset(
                    ("assets/images/todo.png"),
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/wallpaper.png"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Friends'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => null,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ExpansionTileCard(
                key: cardA,
                baseColor: Colors.blue.shade100,
                leading: const CircleAvatar(child: Icon(Icons.bookmark_added)),
                title: const Text(
                  'Add List',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                subtitle: const Text(
                  ' All Category',
                ),
                expandedColor: Colors.grey.shade200,
                children: <Widget>[
                  const Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FirstScreen()),
                                    );
                                  },
                                  child: Card(
                                    shadowColor: Colors.black,
                                    color: Colors.blueGrey.shade200,
                                    child: SizedBox(
                                      width: 100,
                                      height: 108,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  Colors.green[500],
                                              radius: 20,
                                              child: const CircleAvatar(
                                                backgroundColor: Colors.white,
                                                backgroundImage: AssetImage(
                                                    "assets/images/addlist.png"),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'List',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      )),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceAround,
                    buttonHeight: 52.0,
                    buttonMinWidth: 90.0,
                    children: <Widget>[
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          cardA.currentState?.expand();
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.arrow_downward),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text('Open'),
                          ],
                        ),
                      ),
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          cardA.currentState?.collapse();
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.arrow_upward),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text('Close'),
                          ],
                        ),
                      ),
                      TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          cardA.currentState?.toggleExpansion();
                        },
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.swap_vert),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text('Toggle'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
