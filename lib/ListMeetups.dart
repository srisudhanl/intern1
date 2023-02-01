import 'package:flutter/material.dart';
import 'package:intern3/meetups.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ListMeetups(),
));

class ListMeetups extends StatefulWidget {
  const ListMeetups({Key? key}) : super(key: key);

  @override
  State<ListMeetups> createState() => _ListMeetupsState();
}

class _ListMeetupsState extends State<ListMeetups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
              context,MaterialPageRoute(builder:(context)=>Meetups()),

          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                 onLongPress: (){
                   showDialog(context: context, builder: (ctxt)=>AlertDialog(
                     title: Center(
                       child: Text("Scan to get Details",
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),),
                     ),
                     content: Container(
                       height: 250,
                       width: 250,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage('assets/Almightyqrcode.png'),
                               fit: BoxFit.cover)),
                     ),
                   ));
                 },
                onTap: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Text("Name:Almighty"),
                          SizedBox(height: 8,),
                          Text("Timing:10.00 A.M"),
                          SizedBox(height: 8,),
                          Text("Speaker:Kevin"),
                          SizedBox(height: 8,),
                          Text("Topic:Leadership"),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ));
                },
                tileColor: Colors.blue[100],
                isThreeLine: true,
                title: Text("AlMighty",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Timing:10.00 A.M",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                selectedTileColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                selectedColor: Colors.green,
              ),
            ),
            Card(
              child: ListTile(
                onLongPress: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Scan to get Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Buisness1qrcode.png'),
                              fit: BoxFit.cover)),
                    ),
                  ));
                },
                onTap: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Text("Name:Buisness-1"),
                          SizedBox(height: 8,),
                          Text("Timing:11.00 A.M"),
                          SizedBox(height: 8,),
                          Text("Speaker:White"),
                          SizedBox(height: 8,),
                          Text("Topic:Computer Networks"),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ));
                },
                tileColor: Colors.blue[100],
                isThreeLine: true,
                title: Text("Buisness-1",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text("Timing:11.00 A.M",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                selectedTileColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                selectedColor: Colors.green,
              ),
            ),
            Card(
              child: ListTile(
                onLongPress: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Scan to get Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/buisness2qrcode.png'),
                              fit: BoxFit.cover)),
                    ),
                  ));
                },
                onTap: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Text("Name:Buisness-2"),
                          SizedBox(height: 8,),
                          Text("Timing:12.00 P.M"),
                          SizedBox(height: 8,),
                          Text("Speaker:Peter"),
                          SizedBox(height: 8,),
                          Text("Topic:UI/UX Development"),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ));
                },
                tileColor: Colors.blue[100],
                isThreeLine: true,
                title: Text("Buisness-2",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text("Timing:12.00 P.M",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                selectedTileColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                selectedColor: Colors.green,
              ),
            ),
            Card(
              child: ListTile(
                onLongPress: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Scan to get Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/buisness3qrcode.png'),
                              fit: BoxFit.cover)),
                    ),
                  ));
                },
                onTap: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Text("Name:Buisness-3"),
                          SizedBox(height: 8,),
                          Text("Timing:01.00 P.M"),
                          SizedBox(height: 8,),
                          Text("Speaker:Jackson"),
                          SizedBox(height: 8,),
                          Text("Topic:App development"),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ));
                },
                tileColor: Colors.blue[100],
                isThreeLine: true,
                title: Text("Buisness-3",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text("Timing:01.00 P.M",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                selectedTileColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                selectedColor: Colors.green,
              ),
            ),
            Card(
              child: ListTile(
                onLongPress: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Scan to get Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/buisness4qrcode.png'),
                              fit: BoxFit.cover)),
                    ),
                  ));
                },
                onTap: (){
                  showDialog(context: context, builder: (ctxt)=>AlertDialog(
                    title: Center(
                      child: Text("Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          Text("Name:Buisness-4"),
                          SizedBox(height: 8,),
                          Text("Timing:02.00 P.M"),
                          SizedBox(height: 8,),
                          Text("Speaker:George"),
                          SizedBox(height: 8,),
                          Text("Topic:Web development"),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ));
                },
                tileColor: Colors.blue[100],
                isThreeLine: true,
                title: Text("Buisness-4",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                subtitle: Text("Timing:02.00 P.M",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                selectedTileColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                selectedColor: Colors.green,
              ),
            ),
          ],
        ),
        width:double.infinity,
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
