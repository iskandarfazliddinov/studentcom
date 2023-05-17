import 'package:flutter/material.dart';


class WArrivalTime extends StatelessWidget {
  final String run;
  final String bus;
  final String car;

  const WArrivalTime({Key? key,required this.run,required this.bus,required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Icon(Icons.directions_run, size: 10),
        Text(
          run,
          style: const TextStyle(fontSize: 10),
        ),
        const SizedBox(
          width: 16,
        ),
        const Icon(Icons.bus_alert, size: 10),
        Text(
          bus,
          style: const TextStyle(fontSize: 10),
        ),
        const SizedBox(
          width: 16,
        ),
        const Icon(Icons.local_taxi, size: 10),
        Text(
          car,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
