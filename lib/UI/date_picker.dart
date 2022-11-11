import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:e_monitor/Theme/colors.dart';
import 'package:blurrycontainer/blurrycontainer.dart';


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
    return BlurryContainer(
      blur: 5,
      color: MonitorColors.MonitorDarkGrey,
      height: MediaQuery.of(context).size.height / 2.7,
      width: MediaQuery.of(context).size.width / 0.7,
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
