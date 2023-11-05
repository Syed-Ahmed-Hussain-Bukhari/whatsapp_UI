
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData(
        primaryColor:const  Color(0xff075E54),
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 84, 82, 82),
          title: const Text('WhatsApp',style:TextStyle(
        fontSize: 34,
        color: Colors.white,
      )),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                // Handle more options action
              },
            ),

            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Handle more options action
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon:  Icon(Icons.chat), text: 'Chats'),
              Tab(icon: Icon(Icons.ad_units_sharp), text: 'Status'),
              Tab(icon: Icon(Icons.call), text: 'Call'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Chats Page
            Center(
              child: ListView(
                children:[ Column(children: [
                  const SizedBox(height:12,),
                  Chats("Ahmed", "Hi","10:20 AM","assets/images/2133155.webp" ),
                  SizedBox(height:12,),
                  Chats("Aslam", "How are you?","2:30 PM","assets/images/OIP.jpg" ),
                  SizedBox(height:12,),
                  Chats("Ayan", "Kaha ho...................long?","5:30 PM","assets/images/R.jpg" ),
                  SizedBox(height:12,),
                  Chats("Ammar", "Mujhey ye kaam tha k ................","Yesterday","assets/images/R (1).jpg" ),
                  SizedBox(height:12,),
                  Chats("Sabir", "kl milte hai.................","Yesterday","assets/images/Attractive-Images-for-Whatsapp-DP.png" ),
                  SizedBox(height:12,),
                  Chats("Saad", "Acha thik ai","10:22 AM","assets/images/R.jpg" ),
                  SizedBox(height:12,),
                  Chats("Reyan", "ok ","4:50 PM","assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  Chats("Ali", "hello ","10/8/23","assets/images/Attractive-Images-for-Whatsapp-DP.png" ),
                  SizedBox(height:12,),
                  Chats("Hamza", "App thik ho","23/4/23","assets/images/R (1).jpg" ),
                  SizedBox(height:12,),
                  Chats("Jawad", "mera ye problem hai...............","22/3/22" ,"assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                ],),
                ]
              ),
            ),

            // Status Page
            Center(
              child: ListView(
                children: [
                  Column(
                    children: [
                  SizedBox(height:12,),
                  ListView(
                    shrinkWrap: true,
                    children:[ Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      child: Text("Status",style: TextStyle(fontSize: 34,color: Colors.white),),
                    ),
                    ]
                  ),
                  SizedBox(height:12,),
                  status_option("My Status", "Tap to add status update","assets/images/2133155.webp"),
                  SizedBox(height:20,),
                  status_option("Ahmed", "5:37 PM", "assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  status_option("Hamza", " 6:34 PM", "assets/images/R.jpg"),
                  SizedBox(height:12,),
                  status_option("Sabir", " 3:34 PM","assets/images/R (1).jpg"),
                  SizedBox(height:12,),
                  status_option("Jawed", "2:34 PM", "assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  status_option("Kurrum", " 1:34 PM", "assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  status_option("Ali"," 8:34 PM","assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  status_option("Sonu", " 7:34 PM","assets/images/2133155.webp"),
                  SizedBox(height:12,),
                  status_option("Sajjad", " Se8:34 PM", "assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  status_option("Saboor"," 3:34 PM", "assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  status_option("Sabir", " 7:34 PM","assets/images/R (1).jpg"),
                  SizedBox(height:12,),
                  status_option("Saad", " 5:34 PM","assets/images/R.jpg"),
                  SizedBox(height:12,),
                  status_option("Hamza", "12:34 PM","assets/images/2133155.webp"),
                  SizedBox(height:12,),
                  status_option("Ali", " 3:34 PM","assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  status_option("Sonu", "5:34 PM","assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  
                    ],
                  )
                ],
              ),
            ),

            // Call Page
            Center(
              child:ListView(
                children:[ Column(children: [
                  
                  SizedBox(height:12,),
                  SizedBox(height:12,),

                  ListTile(  
      
                    tileColor:Colors.black, 
                    title: Text("Create call link",style:TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                    )),
                    
                    subtitle: Text("Share a link for you WhatsApp call",style:TextStyle(
                      color: Colors.white
                    )),
                  
                    leading: CircleAvatar(
                      backgroundImage:AssetImage("assets/images/Call-Button-PNG-Clipart.png") ,
                      backgroundColor: Colors.white,
                    ),
                    
                  
                  ),



                  SizedBox(height:12,),
                  ListView(
                    shrinkWrap: true,
                    children:[ Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      child: Text("Recent",style: TextStyle(fontSize: 25,color: Colors.white),),
                    ),
                    ]
                  ),
                  SizedBox(height:12,),
                  call_option("Ahmed", " September 19,5:37 PM", Colors.white,"assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  call_option("Hamza", " November 19,6:34 PM", Colors.white,"assets/images/R.jpg"),
                  SizedBox(height:12,),
                  call_option("Sabir", " january 19,3:34 PM", Colors.red,"assets/images/R (1).jpg"),
                  SizedBox(height:12,),
                  call_option("Jawed", " March 19,2:34 PM", Colors.white,"assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  call_option("Kurrum", " September 19,1:34 PM", Colors.white,"assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  call_option("Ali", " march 19,8:34 PM", Colors.red,"assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  call_option("Sonu", " October 19,7:34 PM", Colors.red,"assets/images/2133155.webp"),
                  SizedBox(height:12,),
                  call_option("Sajjad", " September 19,8:34 PM", Colors.white,"assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  call_option("Saboor", " April 19,3:34 PM", Colors.white,"assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  call_option("Sabir", " November 19,7:34 PM", Colors.red,"assets/images/R (1).jpg"),
                  SizedBox(height:12,),
                  call_option("Saad", " October 19,5:34 PM", Colors.red,"assets/images/R.jpg"),
                  SizedBox(height:12,),
                  call_option("Hamza", " April 19,12:34 PM", Colors.white,"assets/images/2133155.webp"),
                  SizedBox(height:12,),
                  call_option("Ali", " October 19,3:34 PM", Colors.white,"assets/images/OIP.jpg"),
                  SizedBox(height:12,),
                  call_option("Sonu", " November 19,5:34 PM", Colors.red,"assets/images/Attractive-Images-for-Whatsapp-DP.png"),
                  SizedBox(height:12,),
                  
                ],),
                ]
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          
          onPressed: () {
            // Handle new chat action
          },
          child: Icon(Icons.message),
          backgroundColor: Colors.green
          ,
        ),
      ),
    );
  }
}


Chats(var name,var msg,var msg_time,var url){

    return ListTile(  
      tileColor:Colors.black, 
      title: Text("$name",style:TextStyle(
        fontSize: 34,
        color: Colors.white
      )),

      subtitle: Text("$msg",style:TextStyle(
        color: Colors.white
      )),

      leading: CircleAvatar(
        backgroundImage:AssetImage(url) ,
        backgroundColor: Colors.white,
      ),
      trailing:Text("$msg_time",style:TextStyle(
        color: Colors.white
      )),

    );
  
}

call_option(var name,var call_time,Color mcolor,var url){

    return ListTile(  
      
      tileColor:Colors.black, 
      title: Text("$name",style:TextStyle(
        fontSize: 34,
        color: mcolor,
      )),
      trailing:Container(child: Icon(Icons.call,color: Colors.green,),height: 60,),
    
      subtitle: Text("$call_time",style:TextStyle(
        color: Colors.white
      )),
    
      leading: CircleAvatar(
        backgroundImage:AssetImage(url) ,
        backgroundColor: Colors.white,
      ),
      
    
    );

}

status_option(var name,var status_time,var url){

    return ListTile(  
      tileColor:Colors.black, 
      title: Text("$name",style:TextStyle(
        fontSize: 34,
        color: Colors.white,
      )),

      subtitle: Text("$status_time",style:TextStyle(
        color: Colors.white
      )),

      leading: CircleAvatar(
        backgroundImage:AssetImage(url) ,
        
        backgroundColor: Colors.white,
      ),
      

    );

}