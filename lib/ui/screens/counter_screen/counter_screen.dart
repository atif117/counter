import 'package:counter_task1/core/colors.dart';
import 'package:counter_task1/ui/screens/counter_screen/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
        child: Consumer<CounterViewModel>(
          builder: (context, model, child) {
            return Scaffold(
              backgroundColor: bacgraoungColors[model.backgroudColor],
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  model.increamentor();
                },
                child: Icon(
                  Icons.add,
                  color: whiteColor,
                ),
              ),
              body: SafeArea(
                  child: Center(
                child: Text(
                  "${model.count}",
                  style: TextStyle(fontSize: 30, color: whiteColor),
                ),
              )),
            );
          },
        ));
  }
}
