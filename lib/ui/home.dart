import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/ui/NowPlaying.dart';
import 'package:movies/ui/Popular.dart';
import 'package:movies/ui/TopRated.dart';
import 'package:movies/ui/UpComing.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text(
                  'Watch ',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Now',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.play_arrow), text: "Now Playing"),
                Tab(icon: Icon(Icons.star), text: "Top Rated"),
                Tab(icon: Icon(Icons.local_movies), text: "Popular"),
                Tab(icon: Icon(Icons.timelapse), text: "UpComing")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NowPlaying(),
              TopRated(),
              Popular(),
              UpComing(),
            ],
          ),
        ),
      ),
    );
  }
}
