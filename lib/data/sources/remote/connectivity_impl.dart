import 'package:data_connection_checker/data_connection_checker.dart';

import 'connectivity.dart';

class ConnectivityImpl implements Connectivity {
  final DataConnectionChecker connectionChecker;

  ConnectivityImpl(this.connectionChecker);
  @override
  Future<bool> hasInternetConnection() {
    return connectionChecker.hasConnection;
  }
}
