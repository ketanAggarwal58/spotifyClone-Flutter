import '../model/list.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key, required this.song}) : super(key: key);

  final DummyList song;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF050406),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.asset("${song.image}"),
            ),
          ],
        ),
      ),
    );
  }
}
