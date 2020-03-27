import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DogSittersApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DogSitterMainPage(),
    );
  }
}

class DogSitterMainPage extends StatefulWidget {
  @override
  _DogSitterMainPageState createState() => _DogSitterMainPageState();
}

class _DogSitterMainPageState extends State<DogSitterMainPage> {
//20 59 62
  Color appColor = Color(0xff143b3e);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Container(
                              width: 52,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  image: DecorationImage(
                                    image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074__340.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Colors.white,
                                  )),

                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hey, Dreamwalker",
                              style: GoogleFonts.handlee().copyWith(
                                color: Colors.yellow,
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Let's find you a dogsitter",
                              style: GoogleFonts.handlee().copyWith(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                  height: 58,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Center(child: Icon(Icons.filter_list, color: Colors.white,)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Top rated dogsitters", style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18
                                  ),),
                                  Text("View all",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.yellow,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, bottom: 16, top: 8),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, idx){
                                return Container(
                                  width: 110,
                                  margin: EdgeInsets.only(right: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 48,
                                      ),
                                      Text("Alex", style: TextStyle(
                                        color: Colors.white,
                                      ),)
                                    ],
                                  ),
                                );
                              }),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Explore activities near you"),
                              Text("Emmalee Lock, New York"),
                            ],
                          ),
                          Text("View all", style: TextStyle(
                            color: appColor,
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Location")),
        ],
      ),
    );
  }
}
