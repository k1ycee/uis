import 'package:flutter/material.dart';



class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {

  String text ='';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            body: SafeArea(
              child: Stack(
                 alignment: AlignmentDirectional.topStart,
                 children: <Widget>[
                   Container(
                     height: double.infinity,
                     width: double.infinity,
                     color: Colors.yellow[100],
                     ),
                     Positioned(
                       top: 50,
                       left: 25,
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Step 1',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w100
                              ),
                              ),
               ],
             ),
           ),
            Positioned(
                top: 90,
                left: 25,
                child: 
                Text(
                      'Choose A State',
                       style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 26
               ),
             ),
            ),
            Positioned(
              top: 140,
              left: 30,
              right: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search, color: Colors.grey,),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  )
                  ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                autocorrect: true,
                onChanged: (value){
                  text = value; 
                } ,
              ),
            ),
            Positioned(
              top: 250,
              left: 30,
              right: 30,
              child: Container(
                height: 350,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/gray.jpg'))
                ),
              ),
            )
           ],
         ),
       ),
      ),
    );
  }
}