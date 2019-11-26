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
      home: Scaffold(
            body: SafeArea(
              child: Stack(
                 alignment: AlignmentDirectional.topStart,
                 children: <Widget>[
                   Container(
                     height: double.infinity,
                     width: double.infinity,
                     color: Colors.yellow[50],
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
              top: 180,
              left: 30,
              right: 30,
              child: Container(
                height: 350,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/nigeria.png'))
                ),
              ),
            ),
            Positioned(
              top: 480,
              left: 30,
              child: 
              Chip(
                backgroundColor: Colors.yellow[100],
                label: Text('Plateau'),
              ),
              ),
            Positioned(
              top: 530,
              left: 30,
              child:Text('Welcome to plateau state. \nHome of peace and hapitality',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),),
              ),
              Positioned(
                bottom: 30,
                right: 15,
                child: FloatingActionButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Icon(Icons.arrow_back),),
                )
           ],
         ),
       ),
      ),
    );
  }
}