
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(color:Colors.grey,width: double.infinity, height: double.infinity,
        child: const Column(
          children:[
            Expanded(
            child:Center(
              child:Padding(padding: EdgeInsets.symmetric(horizontal:25,
              ),
                child:TextField(),
             ),
            ),
            ),
            Text('Hello world'), SizedBox(height: 50,),
            ],
        )
      ),
      
      //esta prop permite que se desahabilite la posibilidad de abrir deslizando el drawer
      endDrawerEnableOpenDragGesture:false,
      onEndDrawerChanged: (isOpen) {
        print(isOpen);
      },
      bottomNavigationBar:BottomNavigationBar(items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")]),
      floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add, size: 30,),  
      onPressed:(){print('press button');}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      endDrawer: const Drawer(
        child: Column(
          children:  [
            SizedBox(height: 40,),
            Text("test@test.com", style: TextStyle(color: Colors.black))
          ],
        ),
      ),
      appBar: AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // este funciona tanto para ios como android
        statusBarBrightness: Brightness.dark
      ),
    backgroundColor: const Color(0xff01579b),
    elevation: 10,
    shadowColor: Colors.red,
    titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
    actions: [IconButton(onPressed:(){}, icon:const Icon(Icons.settings),),
    IconButton(onPressed:(){},icon:Icon(Icons.logout)),],
    title:const Row(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,children: [Text('Flutter App'), ]),)
    );
  }
}
