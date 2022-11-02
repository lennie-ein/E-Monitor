import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:e_monitor/Theme/colors.dart';


class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}
void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  print(args);
}
class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfDateRangePicker(
        onSelectionChanged:_onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.single,
        view: DateRangePickerView.month,
        selectionShape: DateRangePickerSelectionShape.circle,
        backgroundColor: MonitorColors.MonitorNavy,
        selectionColor: MonitorColors.MonitorSea,
      ),
    );
  }
}
