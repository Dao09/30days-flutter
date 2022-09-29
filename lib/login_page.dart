import 'package:dummy/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name='';
  final _formKey=GlobalKey<FormState>();

moveHome(BuildContext context) async{
  if(_formKey.currentState!.validate()){
    setState(() {
                   changeButton=true;
                });
          
                await Future.delayed(Duration(milliseconds: 800));
                 await Navigator.pushNamed(context, MyRoutes.homeRoute);
                 setState(() {
                   changeButton=false;
                 });
  }
}
  
  bool changeButton=false;
  @override
Widget build(BuildContext context){
  return Material(
    color:Colors.white,
    child: SingleChildScrollView(
      child: Form(
        key:_formKey,
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 30,
            ),
            Image.asset("assets/hey.png",
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
                  validator:(value) {
                    if(value!.isEmpty){
                      return "Username can't be empty";
                    }
                  } ,
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
                   validator:(value) {
                    if(value!.isEmpty){
                      return "Password can't be empty";
                    }
                    else if(value.length<6){
                      return "Password should be greater than 6 characters";
                    }
                    }
          ),
          const SizedBox(
                  height:20
          ),
          Material(
            color:Colors.deepPurple,
                 borderRadius: BorderRadius.circular(changeButton?50:10),
      
            child: InkWell(
              borderRadius: BorderRadius.circular(changeButton?50:10),
              onTap:  () {
                moveHome(context);
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
             
              ),
            ),
          )
                ],
              ),
            )
          ],
          
        ),
      ),
    ),
  
  );
}
}