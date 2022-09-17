import 'dart:math';

import 'package:flutter/material.dart';

extension ExposeExtension on BuildContext {
  static void init() {
    _globalState = {};
  }

  static final Map<String, Map<String, Function>> _listeners = {};

  // GlobalStore implements
  static Map<String, dynamic> _globalState = {
    '#init': "",
  };

  static Map<String, dynamic> get __globalState => _globalState;

// GlobalStore Set State
  static set __globalState(Map<String, dynamic> state) {
    _globalState = state;
    String _key = _globalState['#init'];
    _listeners.forEach((key, callback) {
      if (_key == key) {
        callback.forEach((key, value) {
          value();
        });
      }
    });
  }

  Function subscribe(String key, Function callback) {
    String privateKey = randomString(10);
    if (_listeners.containsKey(key)) {
      _listeners[key] = {..._listeners[key]!, privateKey: callback};
    } else {
      _listeners[key] = {privateKey: callback};
    }

    return () {
      _listeners[key]?.remove(privateKey);
    };
  }

  void update(String key, dynamic value) {
    if (key == "#init") {
      throw Exception("You can't update #init");
    }
    __globalState = {...__globalState, key: value, "#init": key};
  }

  void initState(String key, dynamic initialValue) {
    if (key == "#init") {
      throw Exception("You can't update #init");
    }
    if (initialValue == null) {
      throw Exception("initialValue can't be null");
    }
    if (__globalState.containsKey(key)) {
      return;
    }
    __globalState = {...__globalState, key: initialValue, "#init": key};
  }

  dynamic get(String key) => __globalState[key];

  dynamic updateBack(String key, dynamic Function(dynamic) state) {
    update(key, state(get(key)));
    return get(key);
  }

  // random String generator
  static String randomString(int length) {
    var rand = Random();
    var codeUnits = List.generate(
      length,
      (index) {
        return rand.nextInt(33) + 89;
      },
    );

    return String.fromCharCodes(codeUnits);
  }

  Map<String, dynamic> state() => __globalState;

  void forceUpdate(String key) {
    __globalState = {...__globalState, "#init": key};
  }
}
