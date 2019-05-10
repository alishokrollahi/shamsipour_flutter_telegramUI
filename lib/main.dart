import 'package:flutter/material.dart';
import './dashboard.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          elevation: 0,
          //leading: IconButton(
          //icon: Icon(Icons.menu , color: Colors.white,))
          title: Text('Telegram'),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 5),
                child : Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.lock_outline , color:Colors.white),
                    ),
                    Padding(padding: EdgeInsets.only(right: 5),),
                    IconButton(
                        icon:Icon(Icons.search,color: Colors.white,)
                    )
                  ],
                )
            )
          ],
        ),
        drawer: Drawer(
          child : ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ali shokrollahi' , style:TextStyle(fontSize: 16)),
                accountEmail: Text('123987632' , style : TextStyle(fontSize: 15)),
                //decoration: BoxDecoration(
                //image : DecorationImage(image: AssetImage('assets/person.png'),
                //fit: BoxFit.fill,
                currentAccountPicture:
                GestureDetector(
                  child: CircleAvatar(
                    //backgroundImage: AssetImage('assets/person.png'),
                    child: Icon(Icons.person , color: Colors.white, size: 60,),
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
                //)
                //),
              ),
              ListTile(
                  leading: Icon(Icons.group) ,
                  title: Text('New Group')
              ),
              ListTile(
                  leading: Icon(Icons.lock_outline),
                  title : Text('Secret Chat')
              ),
              ListTile(
                  leading: Icon(Icons.forum),
                  title: Text('New Channel')
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.perm_contact_calendar),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Saved Messages'),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title:Text('Calls'),
              )
              ,ListTile(
                leading : Icon(Icons.person_add),
                title : Text('Invite Friends'),
              )
              ,ListTile(
                leading: Icon(Icons.settings),
                title : Text('Settings'),
              ),
              ListTile(
                leading : Icon(Icons.help),
                title : Text('Help'),
              )
            ],
          ),
        ),
        body: dashboard(),

      )
  )
  );
}