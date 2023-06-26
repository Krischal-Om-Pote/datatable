import 'package:flutter/material.dart';

void main() => runApp(MyDataTable());

class MyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Data Table'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('ID'),
              ),
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Middle Name'),
              ),
              DataColumn(
                label: Text('LastName'),
              ),
              DataColumn(
                label: Text('Age'),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Krischal")),
                DataCell(Text("Om")),
                DataCell(Text("Pote")),
                DataCell(Text("23")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("Ram")),
                DataCell(Text("Bhadur")),
                DataCell(Text("KC")),
                DataCell(Text("53")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
