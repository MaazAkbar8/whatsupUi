import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
        length: 3,
        child:Scaffold(
          appBar: AppBar(
            title: Text("whatsup"),
            bottom: const TabBar(
            tabs: [

            Tab(
            child: Text("chats"),
          ),
            Tab(
              child: Text("status"),
            ),
            Tab(
              child: Text("calls"),
            )
            ]


        ),

          actions:  [


              Icon(Icons.camera_alt),


              SizedBox(width: 20,),
              Icon(FontAwesomeIcons.searchengin),
            SizedBox(width: 20,),
            PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context,)=> const[

                  PopupMenuItem(
                      value: 1,
                      child: Text("New group")
                  ),
                  PopupMenuItem(
                      value: 2,
                      child: Text("New broadcast")
                  ),
                  PopupMenuItem(
                      value: 3,
                      child: Text("Linked device ")
                  ),
                  PopupMenuItem(
                      value: 4,
                      child: Text("Starred messages")
                  ),
                  PopupMenuItem(
                      value: 5,
                      child: Text("Setting")
                  ),
                ]

            ),
            SizedBox(width: 20,),

            ],

          ),
          body:  TabBarView(
            children: [
              ListView.builder(

                itemCount: 50,

                itemBuilder: (context,Index){

                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg"),
                  ),
                  title: Text("jehad Akbar"),

                  subtitle: Text("how are you"),

                  trailing: Text("1/2/24"),

                );

              },
              ),

//*************************************************************************chat end ***************
                        Padding(
                          padding: const EdgeInsets.all(160.0),
                          child: Text(" Status screen",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(160.0),
                          child: Text(" calls screen"),
                        ),


            ],
            
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Button Clicked'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(Icons.message),

          ),
        )
    );
  }
}
