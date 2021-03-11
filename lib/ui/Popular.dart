import 'package:flutter/material.dart';
import 'package:movies/model/Movies.dart';
import 'package:movies/network/MoviesClient.dart';
import 'package:movies/ui/detiles.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  Movies _movies = new Movies();
  String imageUrlPrefix = 'https://image.tmdb.org/t/p/w342';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: MoviesClient().getPopularMovies(),
        builder: (context, snapshot) {
          _movies = snapshot.data;
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
                itemCount: _movies.results.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => Detiles(
                                    movieDetails: _movies.results[index],
                                  )));
                    },
                    child: new Card(
                      child: Column(
                        children: [
                          Container(
                            height: 130.0,
                            width: 130.0,
                            child: Image.network(imageUrlPrefix +
                                _movies.results[index].posterPath),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0)),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, left: 8.0, bottom: 5.0),
                            child: Text(
                              '${_movies.results[index].title}',
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 13.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
