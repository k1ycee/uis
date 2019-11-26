import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'view.dart';

void main() => runApp(MaterialApp(
  home: UI(),
  routes: {
    '/view': (context) => View()
  },
  debugShowCheckedModeBanner: false,
));



class UI extends StatefulWidget {
  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/yellow.jpg'),
                )
              ),
            ),
            Positioned(
              bottom: 270,
              right: 15,
              left: 10,
              child: Container(
              child: Text(
                'Ready to \nMove?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold )
                ),
            ),
            ),
            SizedBox(height: 15),
             Positioned(
              bottom: 160,
              right: 15,
              left: 10,
              child: Container(
              child: Text(
                'Cos You have really \ngot to see what we \nhave in stoc for you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal )
                ),
            ),
            ),
            SizedBox(height: 15),
             Positioned(
              bottom: 50,
              left: 10,
              child: Container(
                child: Text(
                  'Just start searching',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold )
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 34),
              child: Align(alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/view');
                        } ,
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.arrow_forward)
                        ,)
                        ),
            )
          ],
        ),
      ),
    );
  }
}