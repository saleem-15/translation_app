// ignore_for_file: unused_field

import 'dart:async';
import 'dart:developer';

class NetworkRequestLimiter {
  NetworkRequestLimiter(
    this._networkRequest, {
    required this.minDurationBetweenCalls,
  });

  Duration minDurationBetweenCalls;
  final Function() _networkRequest;
  bool _mustWait = false;

  late Timer _timer;

  void callFunction() {
    /// if the function is called and not yet performed
    if (_mustWait) {
      return;
    }

    log('-------- Function is called ------');
    _networkRequest();
    _mustWait = true;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer(
      minDurationBetweenCalls,
      () => _mustWait = false,
    );
  }
}

  // void callTheFunction() {
  //   /// if the function is called and not yet performed
  //   if (mustWait) {
  //     return;
  //   }
  //   _networkRequest();

  //   mustWait = false;
  // }