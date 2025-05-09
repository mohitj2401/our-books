import 'package:our_book_v2/bloc/book_bloc.dart';
import 'package:our_book_v2/dependencies/init_dependencies.dart';
import 'package:our_book_v2/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependancies();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => serviceLocator<BookBloc>()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Books",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
