import 'dart:async';

debounce(void Function() fn, int delay) {
  Timer? timer;
  return () {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: delay), fn);
  };
}
