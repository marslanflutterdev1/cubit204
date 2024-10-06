import 'package:cubit204/counter/counter_cubit.dart';
import 'package:cubit204/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StorageDataOfCubitScreen extends StatefulWidget {
  const StorageDataOfCubitScreen({super.key});

  @override
  State<StorageDataOfCubitScreen> createState() => _StorageDataOfCubitScreenState();
}

class _StorageDataOfCubitScreenState extends State<StorageDataOfCubitScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Build Form Start");
    return Scaffold(
      appBar: AppBar(
        title:const Text("Storage Cubit Data",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
              padding:const EdgeInsets.symmetric(vertical: 20),

              // child: Center(child: Text(context.read<CounterCubit>().state.counter.toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              // OR  This is use to pass data from one screen to another screen as favourite item cart ❤️ 💟.
            child: Center(child: Text(BlocProvider.of<CounterCubit>(context).state.counter.toString(),style:const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            GestureDetector(
              onTap:(){
                debugPrint("Build Form Storage Button");
                Navigator.push(context, MaterialPageRoute(builder: (e)=>const CounterScreen()));},
              child: Container(
                margin:const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Center(child: Text("MoveBackToCounter",style:  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
