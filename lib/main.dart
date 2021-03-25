import 'package:flutter/material.dart';
import 'package:flutter_app_tutorial/screens/movies_screen.dart';
import 'package:flutter_app_tutorial/viewModel/movies_list_view_model.dart';

import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies MVVM Example",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),

        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        )
    );
  }

}