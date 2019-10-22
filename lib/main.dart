import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

//
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                
                flex:8,
                
                child: Center(
                  child: Text(
                    '你今天开心嘛？',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: RawMaterialButton(
                  fillColor: Colors.red,
                  highlightColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(50.0),
                    
                  ),
                  constraints: BoxConstraints.tightFor(
                    height: 80,
                    width: 350,
                    ),
                  
                  child: Text(
                    '确定',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 50,
                    ),
                  ),
                  onPressed: (){
                    
                  },
                ),
              ),
              Expanded(child: Container(
                height: 5,
              ),),
              Expanded(
                flex: 2,
                child: RawMaterialButton(
                  fillColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  constraints: BoxConstraints.expand(height:20,width:350),
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                    ),
                  ),
                  onPressed: (){
                    
                  }
                ),
              ),
              Expanded(flex: 2,child: Container(),),
            ],
          ),
        ),
      ),
    );
  }
}