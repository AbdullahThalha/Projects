import 'package:flutter/material.dart';
import 'package:projects/Page%201.dart';

import 'Page 2.dart';
import 'Page 3.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),

    );
}
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       title:const Text('assignmnet  5'),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
           BottomNavigationBarItem(
              icon: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const page1()),
                    );

                  },
              child: Icon(Icons.home)),
              label: 'Page 1'),
           BottomNavigationBarItem(
              icon: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const page2()),
                    );

                  },
              child: Icon(Icons.home)),
              label: 'Page 2'),
           BottomNavigationBarItem(
              icon: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const page3()),
                    );

                  },
              child: Icon(Icons.home)),
              label: 'Page 3'),


        ],


      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Pages")),


            ElevatedButton(
              onPressed: () {  
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const page1()),
                );
              },
              child: const ListTile(
                  title:Text("Page 1")
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const page2()),
                );
              },
              child: const ListTile(
                  title:Text("Page 2")
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const page3()),
                );
              },
              child: const ListTile(
                  title:Text("Page 3")
              ),
            ),

          ],
        ),
      ),
    );

}

}

