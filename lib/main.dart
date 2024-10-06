import 'package:cubit204/counter/counter_cubit.dart';
import 'package:cubit204/cubits/users_cubit.dart';
import 'package:cubit204/cv/resume.dart';
import 'package:cubit204/repository/users_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersCubit(UsersRepo()),
        ),
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const UsersScreen()
        // home: const CounterScreen(),
        home: const Resume(),
      ),
    );
  }
}
