import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ConnectNetworkMangerInterface {
  late bool isConnect;
}

@Singleton(as: ConnectNetworkMangerInterface)
class ConnectNetworkManager implements ConnectNetworkMangerInterface {
  @override
  late bool isConnect;

  ConnectNetworkManager() {
    Connectivity().checkConnectivity().then((result) {
      _setResultConnect(result);
    });
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _setResultConnect(result);
    });
  }

  void _setResultConnect(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      this.isConnect = true;
    } else {
      this.isConnect = false;
    }
  }
}
