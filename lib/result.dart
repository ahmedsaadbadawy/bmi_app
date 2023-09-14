import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final ismale;
  final result;
  final age;

  const Result(
      {super.key,
      required this.ismale,
      required this.result,
      required this.age});

  String get resultphrase {
    String resultText = '';
    if (result >= 30)
      resultText = 'Obese';
    else if (result >= 25 && result < 30)
      resultText = 'Overweight';
    else if (result >= 18.5 && result < 24.9)
      resultText = 'Normal';
    else
      resultText = 'Thin';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${ismale ? 'Male' : 'Female'}',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'Healthness : ${result.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'Healthness : $resultphrase',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'Result : $age',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      )),
    );
  }
}
