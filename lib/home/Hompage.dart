import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_flutter/album/AlbumScreen.dart';
import '../model/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _showActionSheet(BuildContext context, DummyList song) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Column(
          children: [
            Container(
              child: Image.asset(
                '${song.image}',
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${song.albumName}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        message: Text(
          '${song.artist}',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.favorite_border),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Like'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.playlist_add_outlined),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Add to Playlist'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.queue_music),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Add to Queue'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.album_outlined),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('View Album'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.share),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Share'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.radio),
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Go to Song Radio'),
              ],
            ),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancle'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<DummyList> list = [
      DummyList(
        image: "assets/image/albums/bones.jpeg",
        albumName: "Bones",
        artist: "Imagine Dragon",
        rating: 4,
      ),
      DummyList(
        image: "assets/image/albums/destination.jpeg",
        albumName: "Destination",
        artist: "Crash Adams",
        rating: 4,
      ),
      DummyList(
        image: "assets/image/albums/kesariya.jpg",
        albumName: "Kesariya",
        artist: "Arijit Singh",
        rating: 5,
      ),
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF050406),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFbaaab9),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.width * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFbaaab9),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: size.width * 0.86,
              height: size.height * 0.2,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.grey.shade200.withOpacity(0.08),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Weekly',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Music Mix',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 3,
                          backgroundColor: Color(0xFF00C853),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: Text(
                          'Listen 🎧',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(
                          image: AssetImage("assets/image/Icons/MusicIcon.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  'Recently played',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(AlbumScreen(song: list[index]));
                      },
                      child: ListTile(
                        trailing: Container(
                          width: size.width * 0.2,
                          child: Row(children: [
                            Text(
                              '${list[index].rating}',
                              style: TextStyle(
                                color: Colors.amber,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () =>
                                  _showActionSheet(context, list[index]),
                              icon: Icon(Icons.more_horiz),
                              color: Colors.white,
                            ),
                          ]),
                        ),
                        leading: Container(
                          child: Image.asset(list[index].image!),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        title: Text(
                          '${list[index].albumName}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          '${list[index].artist}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              height: size.height * 0.335,
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.grey,
              size: 20.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 10),
                child: Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.12,
              width: size.width * 0.86,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.08),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Indie Pop',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Genre',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image.asset("assets/image/Icons/melloIcon.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
