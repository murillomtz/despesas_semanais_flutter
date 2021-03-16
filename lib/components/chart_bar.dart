import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentege;

//Text('${tr['day']}: ${tr['value']}')
  ChartBar({this.label, this.value, this.percentege});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('R\$${value.toStringAsFixed(2)}'),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            //Para fazer a barra começar de baixo para cima
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    //Deixar a borda circular
                    borderRadius: BorderRadius.circular(5)),
              ),
              FractionallySizedBox(
                heightFactor: percentege,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    //Deixar a borda circular
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
