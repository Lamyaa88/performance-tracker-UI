import 'package:flutter/material.dart';

void main ()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return  MaterialApp(debugShowCheckedModeBanner: false,
  title: 'Material app ',
  home: Home(),
);
  }

}

class Home extends StatelessWidget{
  int counter =0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder
      (builder: (context, StateSetter setState ){
        return Scaffold(
          backgroundColor: Colors.blue.shade200,
          body: Container(
           child: Column(

             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SizedBox(height: 80,),
               Text('Performance Tracker',style: TextStyle(color: Colors.white,fontSize: 30),),
               SizedBox(height: 30,),

               Text('The more you practice ... ',style: TextStyle(color: Colors.grey,fontSize: 15),),
               SizedBox(height: 15,),

               Text('The greater you will be ',style: TextStyle(color: Colors.grey,fontSize: 15),),
               SizedBox(height: 170,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   IconButton(icon: Icon(Icons.remove,size: 50,color: Colors.grey,), onPressed: (){
                     setState(() {
                       counter--;
                     });
                   }),
                   SizedBox(width: 50,),

                   Text('$counter',  style: TextStyle(color: Colors.white,fontSize: 30)),
                   SizedBox(width: 50,),
                   IconButton(icon: Icon(Icons.add,size: 50,color: Colors.grey,), onPressed:(){
                     setState(() {
                       counter++;
                     });
                   }),

                 ],
               ),

               SizedBox(height: 30,),
               Text('Great !!! ',style: TextStyle(color: Colors.white,fontSize: 20),),
               SizedBox(height: 10,),




               Text('You\'ve completed $counter rounds ',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 30,),
               Text('Always remember... ',style: TextStyle(color: Colors.grey,fontSize: 15),),
               SizedBox(height: 10,),
               Text('Your goals don\'t care how you feel  ',style: TextStyle(color: Colors.grey,fontSize: 15),),




             ],
           ),
          ),
        );
    });

  }

}