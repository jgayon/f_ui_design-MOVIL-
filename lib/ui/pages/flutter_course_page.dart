import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(color: const Color.fromARGB(255, 96, 146, 221), height: 100,
          child:Center(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(children: [Text('Flutter Course', style: TextStyle(color: Colors.white,fontSize: 30),),
                Text('2015-10', style:TextStyle(color: Colors.white, fontSize: 15))
                ],
                ),
                Row( children: [Icon(Icons.search, size: 45.0), Icon(Icons.notifications, size: 45.0)],)
              ],
              ),
              
            ],
          ),
        ),
        );
  }

  Widget buildCourseFocus() {
    return Container( color: const Color.fromARGB(255, 255, 255, 255), height: 100, 
      child: Column(
      children: [
        Container(child: Text('Course Focus', textAlign: TextAlign.left, style: TextStyle(fontSize: 25),),),
        Row(children: [
          Column(
            children: [
            Container(
            margin: const EdgeInsets.all(0),
            color: const Color.fromARGB(255, 79, 146, 247),
            width: 300.0,
            height: 5.0,
            ),

              Container(child:Text('Ui Development')),
            ],
          ),
          Column(
            children: [Container(
            margin: const EdgeInsets.all(0),
            color: const Color.fromARGB(255, 255, 38, 0),
            width: 150.0,
            height: 5.0,
            ),
              Container(child:Text('Architecture')),
            ],
          ),
          Column(
            children: [
              Container(
            margin: const EdgeInsets.all(0),
            color: Colors.amber[600],
            width: 150.0,
            height: 5.0,
            ),
            Container(child:Text('Design Thinking Testing')),
            ],
          )
        ],
        ),
         const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,)
      ],
    ),
    );
  }

  Widget buildModules() {
    return Column(
      children: [
        Container(child: Text('Modules')),

        SingleChildScrollView( 
          scrollDirection: Axis.horizontal, 
          child:Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(children: [Icon(Icons.book, color: const Color.fromARGB(255, 9, 82, 192),
      size:35.0,),Text('Introductions')],),
          Column(children:[Icon(Icons.design_services, color: const Color.fromARGB(255, 233, 2, 2),
      size: 35.0,),Text('UX Design')]),
          Column(children:[Icon(Icons.storage, color: const Color.fromARGB(255, 218, 131, 2),
      size: 35.0,),Text('State Management')]),
          Column(children:[Icon(Icons.bug_report,color: const Color.fromARGB(255, 122, 119, 120),
      size: 35.0,),Text('Testing')]),
          Column(children:[Icon(Icons.network_check,color: const Color.fromARGB(255, 23, 209, 255),
      size: 35.0,),Text('Networking')]),
        ]

        ),
        ),

        const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,)

      ],
    );
  }

  Widget buildProjectList() {
    return SingleChildScrollView(
      child:Column(
      children: [
        const Text("Projects"),
        Column(children: <Widget>[
        Container(
        color: const Color.fromARGB(255, 201, 201, 201),
        child: const Center(child: Row(
          children: [Icon(Icons.folder),
            Text('Sudoku'), Icon(Icons.more_vert)
          ],
        )),
    ),
    Container(
      
      color: const Color.fromARGB(255, 201, 201, 201),
      child: const Center(child: Row(
        children: [Icon(Icons.folder),
          Text('Random User'), Icon(Icons.more_vert)
        ],
      )),
    ),
    Container(
      
      color: const Color.fromARGB(255, 201, 201, 201),
      child: const Center(child: Row(
        children: [ Icon(Icons.folder), 
          Text('Note Taking'), Icon(Icons.more_vert)
        ],
      )),
    ),
    Container(
      
      color: const Color.fromARGB(255, 201, 201, 201),
      child: const Center(child: Row(
        children: [ Icon(Icons.folder),
          Text('Weather'),Icon(Icons.more_vert)
        ],
      )),
    ),
    Container(
      
      color: const Color.fromARGB(255, 201, 201, 201),
      child: const Center(child: Row(
        children: [ Icon(Icons.folder),
          Text('Delivery App'),Icon(Icons.more_vert)
        ],
      )),
    ),
  ],
)
      ],
    ),
    );
  }
}
