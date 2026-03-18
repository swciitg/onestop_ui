import 'package:flutter/material.dart';
import 'package:onestop_ui/constants/spacing.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class ClockTime extends StatefulWidget {
  final TimeOfDay? initialTime;
  final ValueChanged<TimeOfDay>? onChanged;

  const ClockTime({super.key, this.initialTime, this.onChanged});

  @override
  State<ClockTime> createState() => _ClockTimeState();
}

class _ClockTimeState extends State<ClockTime> {
  late int hour;
  late int minute;
  late String period;

  late int selectedHour;
  late int selectedMinute;
  late String selectedPeriod;

  @override
  void initState() {
    super.initState();
    final now = widget.initialTime ?? TimeOfDay.now();
    hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    minute = now.minute;
    period = now.hour >= 12 ? 'PM' : 'AM';

    selectedHour = hour;
    selectedMinute = minute;
    selectedPeriod = period;
  }

  void _updateSelected() {
    selectedHour = hour;
    selectedMinute = minute;
    selectedPeriod = period;
    if (widget.onChanged != null) {
      int emitHour = selectedHour;
      if (selectedPeriod == 'PM' && emitHour != 12) {
        emitHour += 12;
      } else if (selectedPeriod == 'AM' && emitHour == 12) {
        emitHour = 0;
      }
      widget.onChanged!(TimeOfDay(hour: emitHour, minute: selectedMinute));
    }
  }

  void _increaseHour() {
    setState(() {
      hour = (hour % 12) + 1;
      _updateSelected();
    });
  }

  void _decreaseHour() {
    setState(() {
      hour = (hour - 1) < 1 ? 12 : hour - 1;
      _updateSelected();
    });
  }

  void _increaseMinute() {
    setState(() {
      minute = (minute + 1) % 60;
      _updateSelected();
    });
  }

  void _decreaseMinute() {
    setState(() {
      minute = (minute - 1) < 0 ? 59 : minute - 1;
      _updateSelected();
    });
  }

  void _togglePeriod() {
    setState(() {
      period = period == 'AM' ? 'PM' : 'AM';
      _updateSelected();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainStyle = OTextStyle.headingLarge.copyWith(color: OColor.gray800);
    final fadedStyle = OTextStyle.labelMedium.copyWith(color: OColor.gray400);

    const hourWidth = 50.0;
    const minuteWidth = 50.0;
    const periodWidth = 65.0;

    int prevHour = (hour - 1) < 1 ? 12 : hour - 1;
    int nextHour = (hour % 12) + 1;

    int prevMinute = (minute - 1) < 0 ? 59 : minute - 1;
    int nextMinute = (minute + 1) % 60;

    String abovePeriod = period == 'PM' ? 'AM' : '';
    String belowPeriod = period == 'AM' ? 'PM' : '';

    return Container(
      padding: const EdgeInsets.all(OSpacing.m),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: hourWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_up, color: OColor.gray600),
                  onPressed: _increaseHour,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: minuteWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_up, color: OColor.gray600),
                  onPressed: _increaseMinute,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: periodWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_up, color: OColor.gray600),
                  onPressed: _togglePeriod,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: hourWidth,
                child: Text(
                  prevHour.toString().padLeft(2, '0'),
                  style: fadedStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: minuteWidth,
                child: Text(
                  prevMinute.toString().padLeft(2, '0'),
                  style: fadedStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: periodWidth,
                child:
                    abovePeriod.isNotEmpty
                        ? Text(
                          abovePeriod,
                          style: fadedStyle,
                          textAlign: TextAlign.center,
                        )
                        : SizedBox(),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: hourWidth,
                child: Text(
                  selectedHour.toString().padLeft(2, '0'),
                  style: mainStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xxs),
              Text(':', style: mainStyle),
              SizedBox(width: OSpacing.xxs),
              SizedBox(
                width: minuteWidth,
                child: Text(
                  selectedMinute.toString().padLeft(2, '0'),
                  style: mainStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: periodWidth,
                child: Text(
                  selectedPeriod,
                  style: mainStyle,
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: hourWidth,
                child: Text(
                  nextHour.toString().padLeft(2, '0'),
                  style: fadedStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: minuteWidth,
                child: Text(
                  nextMinute.toString().padLeft(2, '0'),
                  style: fadedStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: periodWidth,
                child:
                    belowPeriod.isNotEmpty
                        ? Text(
                          belowPeriod,
                          style: fadedStyle,
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                        : SizedBox(),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: hourWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down, color: OColor.gray600),
                  onPressed: _decreaseHour,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: minuteWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down, color: OColor.gray600),
                  onPressed: _decreaseMinute,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              SizedBox(width: OSpacing.xs),
              SizedBox(
                width: periodWidth,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down, color: OColor.gray600),
                  onPressed: _togglePeriod,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
