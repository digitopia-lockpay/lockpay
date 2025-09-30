import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _password = await secureStorage.getString('ff_password') ?? _password;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  /// counter for keys
  int _counter = 0;
  int get counter => _counter;
  set counter(int value) {
    _counter = value;
  }

  int _key = 0;
  int get key => _key;
  set key(int value) {
    _key = value;
  }

  String _password = 'password';
  String get password => _password;
  set password(String value) {
    _password = value;
    secureStorage.setString('ff_password', value);
  }

  void deletePassword() {
    secureStorage.delete(key: 'ff_password');
  }

  String _email = 'username@gmail.com';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _username = 'username';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _firstKey = '';
  String get firstKey => _firstKey;
  set firstKey(String value) {
    _firstKey = value;
  }

  String _secondKey = '';
  String get secondKey => _secondKey;
  set secondKey(String value) {
    _secondKey = value;
  }

  String _thirdKey = '';
  String get thirdKey => _thirdKey;
  set thirdKey(String value) {
    _thirdKey = value;
  }

  int _firstKeyy = 0;
  int get firstKeyy => _firstKeyy;
  set firstKeyy(int value) {
    _firstKeyy = value;
  }

  bool _biometricLoginActivated = false;
  bool get biometricLoginActivated => _biometricLoginActivated;
  set biometricLoginActivated(bool value) {
    _biometricLoginActivated = value;
  }

  bool _cardReceived = false;
  bool get cardReceived => _cardReceived;
  set cardReceived(bool value) {
    _cardReceived = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
