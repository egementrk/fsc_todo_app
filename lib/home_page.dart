import 'package:flutter/material.dart';
import 'package:fsc_todo_app/main.dart';
import 'package:fsc_todo_app/models/movie.dart';
import 'package:fsc_todo_app/components/context_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Movie>>(
          future: getMovies(),
          builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: context.height,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: snapshot.data!
                          .map((movie) => Card(
                                    child: Padding(
                                      padding: context.paddingLow,
                                      child: Column(
                                        children: [
                                          Text(movie.name.toString()),
                                          Text(movie.description.toString()),
                                        ],
                                      ),
                                    ),
                                  )
                              // ListTile(
                              //   title: Text(movie.name.toString()),
                              //   subtitle: Text(movie.description.toString()),
                              // ),
                              )
                          .toList(),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  Future<List<Movie>> getMovies() async {
    final response = await supabaseClient.from('movies').select().order('name', ascending: true).execute();
    final dataList = response.data as List;
    return dataList.map((map) => Movie.fromJson(map)).toList();
  }
}
