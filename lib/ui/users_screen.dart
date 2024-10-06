import 'package:cubit204/cubits/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/users_state.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<UsersCubit>().ifUsersStateLoadedFun();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users API"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
         if(state is UsersStateLoading){
           return const Center(
             child: CircularProgressIndicator(color: Colors.white,strokeWidth: 5,),
           );
         }else if(state is UsersStateLoaded){
           return ListView.builder(
             itemCount: state.usersModel.length,
             itemBuilder: (BuildContext context, int index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Center(child: Text(state.usersModel[index].email.toString(),style:const TextStyle(color: Colors.white, fontSize: 20),)),
               );
             },
           );
         }else if(state is UsersStateError){
           return Center(child:Text(state.errorMessage,style:const TextStyle(color: Colors.white,fontSize: 25),));
         }
         return const Center(child:Text("Nothing Found At The End",style:TextStyle(color: Colors.white,fontSize: 25),));
        },
      ),
    );
  }
}
