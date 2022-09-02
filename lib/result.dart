import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final VoidCallback backtostart;
  final int totalScore;

  const Results(this.backtostart, this.totalScore);

  //getter syntax
  //Datatype get variablename {}
  String get resultphrase {
    var resulttext;

    if (totalScore <= 10) {
      resulttext = 'Not bad';
    } else if (totalScore <= 15) {
      resulttext = 'Very Nice ';
    } else if (totalScore <= 20) {
      resulttext = 'You are that good ?';
    } else if (totalScore <= 25) {
      resulttext = 'Dude you are fire';
    } else if (totalScore <= 30) {
      resulttext = 'I think you are very very cool';
    } else {
      resulttext = 'mehhh, you are aiit';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultphrase,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
            onPressed: backtostart,
            child: const Text(
              'Reset',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
