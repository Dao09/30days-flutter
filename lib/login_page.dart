import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Material(
    color:Colors.white,
  child:Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Image.asset("assets/xy.png",
        height: 200,
        fit: BoxFit.cover,),
        SizedBox(
          width: 100,
          height: 50,
        ),
        Text("Hey",
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
          height: 25,
        ),
      TextFormField(
        decoration: InputDecoration(
          hintText: "Enter You User Name",
          labelText: "Username"
        ),
      ),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Enter You Password",
          labelText: "Password",
          
        ),
      ),
      SizedBox(
        height:20
      ),
      ElevatedButton(onPressed: (){
        print("hey SRS");
      },
       child: Text('Login'),
       style: TextButton.styleFrom(),)

      ],

    ),
  )
  );
}

}