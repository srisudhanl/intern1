import 'package:flutter/material.dart';
import 'package:intern3/meetups.dart';
void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: basicinfo(),
));

class basicinfo extends StatefulWidget {
  const basicinfo({Key? key}) : super(key: key);

  @override
  State<basicinfo> createState() => _basicinfoState();
}

class _basicinfoState extends State<basicinfo> {
  late String address;
  late String age;
  late String Birthdate;
  late String aadharpannumber;
  late String AOI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
              context,MaterialPageRoute(builder:(context)=>Meetups())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(
              //     "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(width: 10,),
                    CircleAvatar(
                      child: Text("J"),
                      backgroundColor: Colors.orange,
                    ),
                    Container(width: 10,),
                    Text("Welcome John",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                width:double.infinity,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.transparent,
              ),
              Text('Basic Info',
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 35.0,
                ),//TextStyle
              ),
              TextField(
                decoration:new InputDecoration(
                  labelText:'Enter Address:',
                  hintText:'Address',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  address=value;

                },
                keyboardType:TextInputType.streetAddress,

              ),
              TextField(
                decoration:new InputDecoration(
                  labelText:'Enter Age:',
                  hintText:'Age',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  age=value;

                },
                keyboardType:TextInputType.number,

              ),
              TextField(
                decoration:new InputDecoration(
                  labelText:'Enter Date Of Birth:',
                  hintText:'DOB',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  Birthdate=value;

                },
                keyboardType:TextInputType.text,

              ),
              TextField(
                decoration:new InputDecoration(
                  labelText:'Enter Aadhaae/PAN number:',
                  hintText:'Aadhaar/PAN number',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  aadharpannumber=value;

                },
                keyboardType:TextInputType.text,

              ),
              TextField(
                decoration:new InputDecoration(
                  labelText:'Enter Area Of Interest:',
                  hintText:'Area Of Interest',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  AOI=value;

                },
                keyboardType:TextInputType.text,

              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: (){
                    showDialog(context: context, builder: (ctxt)=>AlertDialog(
                      title: Text("Data are Collected Successfully",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ));
                  },
                  child:Text("Submit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  color: Colors.lightGreen,
                  splashColor: Colors.red,),
                  RaisedButton(onPressed: (){
                    Navigator.push(
                        context,MaterialPageRoute(builder:(context)=>basicinfo())
                    );
                  },
                  child: Text("Clear",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  color: Colors.red,
                  splashColor: Colors.grey,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
