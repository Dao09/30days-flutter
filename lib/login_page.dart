import 'package:dummy/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name='';
  bool changeButton=false;
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
                Text("Welcome $name",
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(
                  height: 25,
                ),
        TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter You User Name",
                  labelText: "Username",
                ),
                onChanged: (value) {
                  name=value;
                  setState(() {
                });
                },
        ),
        TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter You Password",
                  labelText: "Password",
                  
                ),
        ),
        const SizedBox(
                height:20
        ),
        // ElevatedButton(onPressed: (){
        //         Navigator.pushNamed(context, MyRoutes.homeRoute);
        // },
        //  child: Text('Login'),
        //  style: TextButton.styleFrom(
        //   minimumSize: Size(150, 40)
        //  ),
        //  ),
        InkWell(

          onTap:  () async{
            setState(() {
               changeButton=true;
            });

            await Future.delayed(Duration(milliseconds: 800));
             Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 800),
            width:changeButton?50:150,
            height:50,
            alignment: Alignment.center,
            child: changeButton
            ?const Icon(Icons.done,
            color:Colors.white)
            :const Text("Login",
            style: TextStyle(
              color:Colors.white,
              fontSize: 16
            ),
            ),
            decoration: BoxDecoration(
              color:Colors.deepPurple,
            //   shape: changeButton
            //   ? BoxShape.circle
            //   :BoxShape.rectangle,
             borderRadius: BorderRadius.circular(changeButton?50:10)
            ) ,
          ),
        )
              ],
            ),
          )
        ],
    
      ),
    ),
  
  );
}
}