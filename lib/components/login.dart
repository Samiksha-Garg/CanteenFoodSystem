import 'package:flutter/material.dart';
import 'main.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bgbg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              actions: [
                Container(
                  alignment:Alignment.topLeft,
                  height:45,
                  width: 120,
                padding: EdgeInsets.all(7.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:Colors.transparent
                  ),
                  child: Image.asset('assets/logooo.png'),
                ),
                // IconButton(
                //   icon: Image.asset('assets/logooo.png'),
                //   onPressed: () {},
                // ),
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SafeArea(
              // Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/loginbg.jpg'),fit: BoxFit.cover)),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //hello
                    Text('Welcome!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text('Sign in to continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            //border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                              //prefixIcon: Icon(Icons.face, color: Colors.white,),
                              //fillColor: Colors.white,
                              filled: true,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            //border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'password',
                              hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                              //prefixIcon: Icon(Icons.face, color: Colors.white,),
                              //fillColor: Colors.white,
                              filled: true,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 42.0),
                      child: Container(
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(gradient:LinearGradient(
                          colors: [
                            Colors.white70,
                            Colors.white70,
                          ],
                        ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              TextButton.styleFrom(
                                primary: Colors.white70,
                              );
                              Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context) => LoginPage(),),);
                            },
                            child: Text('Log in',
                              style: TextStyle(color:
                              Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),),
                    SizedBox(height: 5.0,),
                    Text('Forgot password ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 180.0),
                      child:Row(
                        children: <Widget>[
                          Text(' -- or -- ',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 42.0),
                      child: Container(
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(gradient:LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.black12,
                          ],
                        ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Center(
                          child: TextButton(
                            onPressed: (){},
                            child:Row(
                              children: <Widget>[
                              Container(
                              height: 30,
                              width: 30,
                              //   margin: EdgeInsets.all(2000.0),
                              padding: EdgeInsets.all(4.0),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  color:Colors.transparent,
                              ),
                              child: Image.asset('assets/googleadobe.png'),
                            ),
                                Text('Continue with Google',
                                  style: TextStyle(color:
                                  Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),),
                    SizedBox(height: 2.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 42.0),
                      child: Container(
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(gradient:LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.black12,
                          ],
                        ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Center(
                          child: TextButton(
                            onPressed: (){},
                            child:Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 30,
                                  //   margin: EdgeInsets.all(2000.0),
                                  padding: EdgeInsets.all(4.0),
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(8),
                                    color:Colors.transparent,
                                  ),
                                  child: Image.asset('assets/apple.png'),
                                ),
                                Text('Continue with Apple',
                                  style: TextStyle(color:
                                  Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),),
                    SizedBox(height: 2.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 42.0),
                      child: Container(
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(gradient:LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.black12,
                          ],
                        ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: Center(
                          child: TextButton(
                            onPressed: (){},
                            child:Row(
                              children: <Widget>[
                                Container(
                                  height: 30,
                                  width: 30,
                                  //   margin: EdgeInsets.all(2000.0),
                                  padding: EdgeInsets.all(4.0),
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(8),
                                    color:Colors.transparent,
                                  ),
                                  child: Image.asset('assets/microsoft.png'),
                                ),
                                Text('Continue with microsoft',
                                  style: TextStyle(color:
                                  Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),),
                    SizedBox(height: 25.0,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          Text("Don't Have An Account ?",style: TextStyle(color: Colors.white),),
                          InkWell(
                            child: Text('Sign in',style: TextStyle(color:Colors.white),),
                          ),
                        ]
                    ),//not a mem
                  ],
                )
            )
        ),
    );
  }
}