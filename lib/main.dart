
//dynamic listview :
import 'package:flutter/material.dart';
void main(){//start the program;
  runApp(const MyApp());//entry point of App

}

class MyApp  extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(///basically the entry point of an app
      home: HomeActivity(),///start the work of screeN

    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);


  MySnackBar(message,context){///for showing message when unpressed on something
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            const Center(
              child: Text(
                'Welcome to My Photo Gallery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,

                ),


              ),

            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(

                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search),

                    label: Text('Search'),
                    border: OutlineInputBorder()
                ),

              ),
            ),

            Wrap(

              children: [
                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);
                },style: ElevatedButton.styleFrom(
                  minimumSize: const Size(20, 50),
                ),
                  child: Column(


                    children: [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                      const SizedBox(height: 8), // Add some spacing between image and caption
                      const Text('photo  1'),
                    ],
                  ),

                ),
                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);

                }, child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                    const SizedBox(height: 8), // Add some spacing between image and caption
                    const Text('photo  2'),
                  ],
                ),

                ),

                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);

                }, child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                    const SizedBox(height: 8), // Add some spacing between image and caption
                    const Text('photo  3'),
                  ],
                ),

                ),
                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);

                }, child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                    const SizedBox(height: 8), // Add some spacing between image and caption
                    const Text('photo  4'),
                  ],
                ),

                ),
                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);

                }, child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                    const SizedBox(height: 8), // Add some spacing between image and caption
                    const Text('photo  5'),
                  ],
                ),

                ),
                ElevatedButton(onPressed: (){
                  MySnackBar("Clicked on Photo", context);

                }, child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT05i5jNXoArUJ_9bYF2-t9OGiwzkoPCPVsMg&usqp=CAU"),
                    const SizedBox(height: 8), // Add some spacing between image and caption
                    const Text('photo  6'),
                  ],
                ),

                ),

              ],
            ),
            ListView(
              shrinkWrap: true, // Ensure the ListView takes only the required space
              physics: const NeverScrollableScrollPhysics(), // Disable ListView's scroll physics
              children: const [
                ListTile(
                  title: Text('Item 1'),
                  subtitle: Text('Subtitle for Item 1'),
                  leading: Icon(Icons.star),
                ),
                ListTile(
                  title: Text('Item 1'),
                  subtitle: Text('Subtitle for Item 1'),
                  leading: Icon(Icons.star),
                ),
                ListTile(
                  title: Text('Item 1'),
                  subtitle: Text('Subtitle for Item 1'),
                  leading: Icon(Icons.star),
                ),
              ],
            ),

            IconButton(onPressed: (){
              MySnackBar('Photos uploaded successfully!', context);
            },
              icon: const Icon(Icons.add),

            ),










          ],


        ),
      ),
    );

  }


}
