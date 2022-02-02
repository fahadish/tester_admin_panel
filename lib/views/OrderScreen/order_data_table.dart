import 'package:flutter/material.dart';


class OrderDataTable extends StatelessWidget{
  List<Map> _orderData = [
    {
      'Name': 'Fahad',
      'Quantity': 1,
      'UnitPrice': 200,
      'total':'Rs. 200',
    },
    {
      'Name': '',
      'Quantity': '',
      'UnitPrice': 'Total',
      'total':'Rs. 200',
    },
    {
      'Name': '',
      'Quantity': '',
      'UnitPrice': 'GST',
      'total':'Rs. 0',
    },
    {
      'Name': '',
      'Quantity': '',
      'UnitPrice': 'Next Total',
      'total':'Rs. 200',
    },

    //{
    // 'UnitPrice':'total'
    //     },
    //     {
    //       'UnitPrice':'GST'
    //     },
    //     {
    //       'UnitPrice':'NextTotal'
    //     },

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            _createDataTable()
          ]);



  }
  DataTable _createDataTable() {
    return DataTable(headingRowColor:  MaterialStateProperty.all(Colors.grey.shade300) ,
        columnSpacing: .5,decoration: BoxDecoration(color: Colors.white),
        dividerThickness: 0,columns: _createColumns(), rows: _createRows());
  }
  List<DataColumn> _createColumns() {

    return [
      DataColumn(
          label: Text('Image'),),
      DataColumn(
          label: Center(child: Text('Name',textAlign: TextAlign.center,),)),
      DataColumn(label: Text('Quantity'),numeric: false),
      DataColumn(label: Text('Unit Price')),

      DataColumn(label: Text('total',)),


    ];
  }
  List<DataRow> _createRows() {
    return _orderData
        .map((orderDetails) => DataRow(cells: [
      DataCell(FlutterLogo()),
      DataCell(Text(orderDetails['Name'])),
      DataCell(Text(orderDetails['Quantity'].toString())),
      DataCell(Text(orderDetails['UnitPrice'].toString())),
      DataCell(Text(orderDetails['total'].toString())),


    ]))
        .toList();

  }
}