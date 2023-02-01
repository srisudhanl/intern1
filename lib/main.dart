import 'package:flutter/material.dart';
import 'package:intern3/meetups.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Splash2(),
  ));}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new entry(),
      title: new Text('Meetups',textScaleFactor: 2,),
       //image: new Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fmeetup&psig=AOvVaw36Mowu-yBSq7XMdmFfQJov&ust=1675059229693000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOC4iJuQ7PwCFQAAAAAdAAAAABAE'),
      image: Image.asset("assets/meetupslogo.png"),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}



class entry extends StatefulWidget {
  const entry({Key? key}) : super(key: key);

  @override
  State<entry> createState() => _entryState();
}

class _entryState extends State<entry> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(height: 100,
              width: double.infinity,
              color: Colors.transparent,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    image: DecorationImage(
                      // image: NetworkImage(
                      //     "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                        image: AssetImage('assets/engineerprofile.webp'),
                        fit: BoxFit.cover)),
                height: 200,
                width: double.infinity,
              ),
              Container(
                child:Center(
                  child:Text('MEETUPS',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black
                      ,),

                  ),),
                color: Colors.transparent,
                width: double.infinity,
                height: 200,
              ),
              Container(
                child: Center(child:Text('Login Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ), //TextStyle
                ),),
                color: Colors.transparent,
                width: double.infinity,
              ), //Text
              TextField(
                decoration: new InputDecoration(
                  labelText: 'Enter Email:',
                  hintText: 'email address',
                ), //InputDecoration
                autocorrect: false,
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              Container(
                color: Colors.transparent,
                height: 30,
                width: double.infinity,
              ),
              TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Enter PassWord:',
                  hintText: 'Password',
                ), //InputDecoration
                autocorrect: false,
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.text,
              ),
              Container(
                color: Colors.transparent,
                height: 50,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){
                    if(email=="john@gmail.com"&& password=="john2003"){
                      Navigator.push(
                          context,MaterialPageRoute(builder:(context)=>Meetups())
                      );
                    }
                    else{
                      showDialog(context: context, builder: (ctxt)=>AlertDialog(
                        title: Text("Invalid user",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      ));
                    }
                  },
                    child: Text("Login"),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.lightGreen,),
                  RaisedButton(
                    child: Text("Cancel"),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder:(context)=>entry())
                      );
                    },)
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(
              //     "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover)),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}





