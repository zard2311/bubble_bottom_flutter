// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import 'screen.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

//because there is a change when pressing the bottom bar, we will use stateful
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  //when changing state, change the current index
  //index is the number of each bottom menu bar

  //setiap kali menu ditekan, kalian akan mendapatkan nomor index
  //ketika state berganti, ganti variabel currentindex
  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
      print(index);
    });
  }

  //ketika menu ditekan, method ini akan dijalankan
  //setiap tampilan bisa kalian ubah pada screen.dart
  //setiap index menentukan tampilan yang akan ditampilkan
  Widget _getWidget() {
    if (currentIndex == 1) {
      return HistoryScreen();
    } else if (currentIndex == 2) {
      return FolderScreen();
    } else if (currentIndex == 3) {
      return GalleryScreen();
    }
    return HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bubble Bottom Bar Demo'),
      ),
      //tampilan disesuaikan dengan nomor index
      body: _getWidget(),
      //membuat floating buttom
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      //menentukan posisi floating button
      //floating button diletakkan dipojok akhir menu
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      //membuat menu
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        elevation: 8,
        //membuat menu item
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: Colors.deepPurple,
              ),
              title: Text("History")),
          BubbleBottomBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.orange,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.image,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.image,
                color: Colors.green,
              ),
              title: Text("Gallery"))
        ],
      ),
    );
  }
}
