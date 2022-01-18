import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switch=false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switch ? _dark : light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Settings',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Row(
                        children:[
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.deepPurple),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey,spreadRadius: 2,blurRadius: 5,
                                )
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/jhumur.jpg'),
                              radius: 35,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Naznin Akter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text('Sign in to your OPPO ID to explore more ',style: TextStyle(fontSize: 15),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ],
              ),
              Divider(height: 20,thickness: 2,),
              ListTile(
                title: Text('Wi-Fi',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.wifi,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Bluetooth',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.bluetooth,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Cellular',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.signal_cellular_0_bar,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Personal Hotspot',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(CupertinoIcons.personalhotspot,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Carrier',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.local_phone,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              SizedBox(
                height: 40,
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Notification Center',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.notifications,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Control Center',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.control_point,color: Colors.deepPurple,),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(height: 10,thickness: 2,),
              Column(
                children: [
                  Padding( padding: EdgeInsets.only(left: 40),
                    child: SwitchListTile(title: Text('Dark Mode',
                        style: TextStyle(fontWeight: FontWeight.bold)),contentPadding: EdgeInsets.only(left: 10),
                        value: _switch, onChanged: (_newvalue){
                          setState(() {
                            _switch = _newvalue;
                          });
                        }
                    ),
                  ),
                ],
              ),
              Divider(height: 10,thickness: 2,),
              ListTile(
                title: Text('Airplane Mode',style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(Icons.airplanemode_active,color: Colors.deepPurple,),
                trailing: Icon(Icons.switch_left),
              ),
              Divider(height: 10,thickness: 2,),
            ],
          ),
        ),
      ),
    );
  }
}





