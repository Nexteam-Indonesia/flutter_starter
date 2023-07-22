import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../theme/theme.dart';

class ResendOtpTimer extends StatefulWidget {
  final VoidCallback? onElapsed;

  const ResendOtpTimer({
    Key? key,
    this.onElapsed,
  }) : super(key: key);

  @override
  State<ResendOtpTimer> createState() => ResendOtpTimerState();
}

class ResendOtpTimerState extends State<ResendOtpTimer>
    with TickerProviderStateMixin {
  late Timer? _timer;
  static const int seconds = 60;
  final remainingTime = ValueNotifier<Duration>(const Duration(
    seconds: seconds,
  ));

  void start() {
    _timer = Timer.periodic(
        const Duration(
          seconds: 1,
        ), (timer) {
      remainingTime.value = Duration(seconds: seconds - timer.tick);

      if (timer.tick == 60) {
        widget.onElapsed?.call();
        stop();
      }
    });
  }

  void stop() {
    if (_timer == null) return;
    if (!_timer!.isActive) return;

    _timer!.cancel();
  }

  void reset() {
    stop();
    remainingTime.value = const Duration(seconds: seconds);
  }

  // Formatting Remainder
  String _fRemainder(num remainder) {
    return remainder.toString().padLeft(2, '0');
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  void dispose() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Duration>(
      valueListenable: remainingTime,
      builder: (context, elapsed, child) {
        final mm = _fRemainder(elapsed.inMinutes.remainder(60));
        final ss = _fRemainder(elapsed.inSeconds.remainder(60));

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            child!,
            const SizedBox(
              width: 5,
            ),
            Text(
              '$mm:$ss',
              style: CustomTextTheme.paragraph1
                  .copyWith(color: ColorTheme.neutral[600]),
            ),
          ],
        );
      },
      child: const Icon(
        Icons.access_time_outlined,
        color: Color(0xFF878787),
        size: 18,
      ),
    );
  }
}
