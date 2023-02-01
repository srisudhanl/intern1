import 'package:flutter/material.dart';
import 'package:intern3/ListMeetups.dart';
import 'package:intern3/basicinfo.dart';
import 'package:intern3/main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Meetups(),
));
class Meetups extends StatefulWidget {
  const Meetups({Key? key}) : super(key: key);

  @override
  State<Meetups> createState() => _MeetupsState();
}

class _MeetupsState extends State<Meetups> {
  Future _qrscanner() async{
   var cameraStatus= await Permission.camera.status;
    if(cameraStatus.isGranted){
      String? qrdata=await scanner.scan();
      print(qrdata);
      showDialog(context: context, builder: (ctxt)=>AlertDialog(
        title: Text("Details",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
         content: Container(
           child: Text(qrdata!),
         ),
      ));
    }else{
      var isGrant = await Permission.camera.request();
      if(isGrant.isGranted){
        String? qrdata=await scanner.scan();
        print(qrdata);
        showDialog(context: context, builder: (ctxt)=>AlertDialog(
          title: Text("Details",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          content: Container(
            child: Text(qrdata!),
          ),
        ));

      }
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
              context,MaterialPageRoute(builder:(context)=>basicinfo())
          );
        },
            icon: Icon(Icons.person_pin)),
        actions: <Widget>[
          IconButton(onPressed: (){
            _qrscanner();
          },
              icon: Icon(Icons.qr_code_scanner_rounded)),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(width: double.infinity,
              height: 100,
              color: Colors.transparent,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    image: DecorationImage(
                      // image: NetworkImage(
                      //     "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                        image: AssetImage('assets/engineerprofile.webp'),
                        fit: BoxFit.cover)),
                width: double.infinity,
                height: 200,
              ),
              Container(
                child: Center(child:Text("MEETUPS",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),),),
                width:double.infinity,
                height:250,
                color: Colors.transparent,
              ),
              Container(
                child: RaisedButton(onPressed: (){
                  Navigator.push(
                      context,MaterialPageRoute(builder:(context)=>ListMeetups())
                  );
                },
                  child: Text("Meetups list",
                    style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.normal),),
                color: Colors.lightGreen,),
                width: double.infinity,
                height: 100,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(
              //     "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
