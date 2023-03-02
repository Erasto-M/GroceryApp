import 'package:firebaseauth/Screens/login.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Container(
                height: height*0.4,
                width: width*1.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 50,
                      )
                    ],
                    image: const DecorationImage(
                      image: AssetImage('images/img.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                  height: height*0.4,
                  width: width*1.0,
                  decoration:const  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                    boxShadow:[
                      BoxShadow(
                        blurRadius: 30,
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                       const Text(" Grocery App",
                       style: TextStyle(color: Colors.orange,fontSize: 40),),
                      const SizedBox(height: 15,),
                     const  Text("Login if Already Registered",
                     style: TextStyle(color: Colors.black,fontSize: 30),),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                          },
                          child: Text("Register"),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
