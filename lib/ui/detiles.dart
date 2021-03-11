import 'package:flutter/material.dart';
import 'package:movies/model/Results.dart';

class Detiles extends StatefulWidget {
  final Results movieDetails;

  const Detiles({Key key, this.movieDetails}) : super(key: key);

  @override
  _DetilesState createState() => _DetilesState();
}

class _DetilesState extends State<Detiles> {
  String imageUrlPrefix = 'https://image.tmdb.org/t/p/w342';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Stack(
                children: [
                  Container(
                    width: 800.0,
                    child: Image.network(
                      imageUrlPrefix + widget.movieDetails.backdropPath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0, right: 10.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                            ),
                            onPressed: null),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                            height: 180.0,
                            child: Image.network(imageUrlPrefix +
                                widget.movieDetails.posterPath)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                            height: 200.0,
                            width: 200.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.movieDetails.title,
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black),
                                ),
                                Text(widget.movieDetails.overview,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.black)),
                                Row(
                                  children: [
                                    Text(
                                      widget.movieDetails.releaseDate,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                    ),
                                    Text(
                                      " (Released)",
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.black),
                                    )
                                  ],
                                ),
                                FlatButton(
                                    onPressed: () {},
                                    child: Container(
                                        alignment: Alignment.center,
                                        height: 40.0,
                                        width: 70.0,
                                        decoration: BoxDecoration(
                                            color: Colors.tealAccent,
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Text(
                                          "Reviews",
                                          style: TextStyle(color: Colors.black),
                                        )))
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              iconSize: 35.0,
                              icon: Icon(
                                Icons.how_to_vote,
                                color: Colors.red,
                              ),
                              onPressed: null),
                          Text("${widget.movieDetails.voteAverage}")
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 35.0,
                            icon: Icon(
                              Icons.tag_faces_sharp,
                              color: Colors.red,
                            ),
                            onPressed: null),
                        Text("Actions"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 35.0,
                            icon: Icon(
                              Icons.people_sharp,
                              color: Colors.red,
                            ),
                            onPressed: null),
                        Text("${widget.movieDetails.popularity}"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 35.0,
                            icon: Icon(
                              Icons.language,
                              color: Colors.red,
                            ),
                            onPressed: null),
                        Text("${widget.movieDetails.originalLanguage}"),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Divider(
                thickness: 2.0,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  widget.movieDetails.overview,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 10.0),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onPressed: null),
            ),
          ),
        ],
      ),
    );
  }
}
