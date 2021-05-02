import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.snackbar('Hello Dear ', 'Hello Surya Prakash Yadav',
                      snackPosition: SnackPosition.BOTTOM,
                      titleText: Text(
                        'Ramendra PAtel',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Colors.black,
                      borderRadius: 30.0,
                      margin: EdgeInsets.all(10),
                      // maxWidth: 100,
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient:
                          LinearGradient(colors: [Colors.red, Colors.green]),
                      isDismissible: true,
                      
                      dismissDirection: SnackDismissDirection.HORIZONTAL,
                      forwardAnimationCurve: Curves.bounceInOut,

                      //duration: Duration(milliseconds: 8000),
                      icon: Icon(Icons.send,color: Colors.white,),

                      shouldIconPulse: false,
                    onTap: (val){
                      print('Click');

                    }

                      );
                },
                child: Text('Show Snackbas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
