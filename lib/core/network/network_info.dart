import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetWorkInfo {
  Future<bool> get isConncted;
}

class NetworkInfoImp implements NetWorkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImp(this.internetConnectionChecker);
  @override
  Future<bool> get isConncted => internetConnectionChecker.hasConnection;
}
