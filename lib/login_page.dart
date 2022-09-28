import 'package:dummy/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Material(
    color:Colors.white,
 
   
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 30,
          ),
          Image.asset("assets/xy.png",
          height: 200,
          fit: BoxFit.cover,),
          SizedBox(
            width: 100,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Welcome",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
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
                Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
         child: Text('Login'),
         style: TextButton.styleFrom(
          minimumSize: Size(150, 40)
         ),
         ),
              ],
            ),
          )
    
        ],
    
      ),
    ),
  
  );
}

}