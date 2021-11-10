import 'package:flutter/material.dart';
import './message.dart';
import './setting.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GpaCalculator App',
    /*  initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the Main widget.
        '/': (context) => gpa(),
        '/message': (context) => Messages(),
        '/setting': (context) => Settings()
      },*/
      // home: Main(),
    );
  }
}

class gpa extends StatefulWidget {
  @override
  _gpaState createState() => _gpaState();
}

class _gpaState extends State<gpa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPA Calculator App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Welcome to Home Screen ',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>InputPage()));
                });
              },
              child: Text(
                'Calculate Gpa ',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.deepPurple),
              ),
            ),
            SizedBox(height: 10.0,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>InputPage()));
                });
              },
              child: Text(
                'Calculate SGpa  ',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.blue),
              ),
            ),
            SizedBox(height: 10.0,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>InputPage()));
                });
              },
              child: Text(
                'Calculate CGpa  ',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.blueGrey),
              ),
            ),

          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(child: Text('GPA App')),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('GPA'),
              onTap: () {
               // Navigator.pop(context);
               // Navigator.pushNamed(context, '/message');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>InputPage()));

              },
            ),
            ListTile(
              title: Text('SGPA'),
              onTap: () {
               // Navigator.pop(context);
               // Navigator.pushNamed(context, '/setting');
               Navigator.push(context,
               MaterialPageRoute(builder: (context)=>InputPage()));

    },

            ),
            ListTile(
              title: Text('CGPA'),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.pushNamed(context, '/setting');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>InputPage()));

              },

            ),
          ],
        ),
      ),
    );
    ;
  }
}
