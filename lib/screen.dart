// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//tampilan homescreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        color: Colors.red[100],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.dashboard,
            size: 50,
          ),
          Text('Home Screen'),
        ]),
      ),
    );
  }
}

//tampilan hostory screen
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.access_time,
                size: 50,
              ),
              Text('History Screen')
            ],
          )),
    );
  }
}

//tampilan folder screen
class FolderScreen extends StatelessWidget {
  const FolderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          alignment: Alignment.center,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.folder_open,
                size: 50,
              ),
              Text('Folders Screen')
            ],
          )),
    );
  }
}

//tampilan gallery screen
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          alignment: Alignment.center,
          color: Colors.green[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: 50,
              ),
              Text('Image Screen')
            ],
          )),
    );
  }
}
