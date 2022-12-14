import 'package:flutter/material.dart';
import 'package:test_nf/model/model_movie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_nf/screen/detail_screen.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({Key? key, required this.movies}) : super(key: key);
  final List<Movie> movies;

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;

  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.network(m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: images,
            options: CarouselOptions(onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
                _currentKeyword = keywords[_currentPage];
              });
            }),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(
              _currentKeyword,
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        likes[_currentPage]
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    likes[_currentPage] = !likes[_currentPage];
                                    movies[_currentPage]
                                        .reference
                                        .update({'like': likes[_currentPage]});
                                  });
                                },
                                icon: Icon(Icons.check),
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    likes[_currentPage] = !likes[_currentPage];
                                    movies[_currentPage]
                                        .reference
                                        .update({'like': likes[_currentPage]});
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                        Text(
                          'My Favorite Content',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: TextButton(
                      // color: Colors.white,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text(
                            'Play Content',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return DetailScreen(
                                    movie: movies[_currentPage],
                                  );
                                },
                                fullscreenDialog: true));
                          },
                          icon: Icon(Icons.info),
                        ),
                        Text(
                          'Information',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  )
                ]),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(likes, _currentPage),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(
      Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)),
      ),
    );
  }
  return results;
}
