import 'package:cubit204/counter/counter_cubit.dart';
import 'package:cubit204/counter/counter_state.dart';
import 'package:cubit204/ui/storage_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Build Form Start");
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter Cubit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Padding(
              padding:const EdgeInsets.symmetric(vertical: 20),
              child: Center(child:
               BlocBuilder<CounterCubit, CounterState>(
                 buildWhen: (previous, current) => previous.counter != current.counter,
                     builder: (context, state) {
                       debugPrint("Build Form Text Widget Only ${state.counter} Time... ");
                     return Text(state.counter.toString(),style:const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),);
                 },
               ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reuseButton(
                  onTap: (){
                    debugPrint("Build Form Button Plus");
                    context.read<CounterCubit>().incrementFun();
                  },
                  btn: "+"
                ),
                reuseButton(
                    onTap: (){
                      debugPrint("Build Form Button Minus");
                      context.read<CounterCubit>().decrementFun();
                    },
                    btn: "-"
                ),
              ],
            ),
            GestureDetector(
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (e)=>const StorageDataOfCubitScreen()));},
              child: Container(
                margin:const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Center(child: Text("MoveDataNextScreenByCubit",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector reuseButton({void Function()? onTap,String? btn}) {
    return GestureDetector(
            onTap:onTap,
            child: Container(
              width: 100,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$btn",style:const TextStyle(color: Colors.white,fontSize: 30),)),
            ),
          );
  }
}
