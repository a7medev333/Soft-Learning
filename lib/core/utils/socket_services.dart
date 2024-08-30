import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';


class SocketService{
  static final SocketService _instance = SocketService._internal();
  IO.Socket? socket;

  SocketService._internal();

  Function(dynamic data)? onLoginEvent;
  Function(dynamic data)? onLogoutEvent;


  factory SocketService(){
    return _instance;
  }

  void connectAndListen(){
    socket ??= IO.io(
      "http://localhost:5000", //192.168.223.92
      IO.OptionBuilder().setTransports(["websocket"]).build(),
    );

    socket!.onConnect(
        (data) => {
         print("Connected to Socket")
        }
    );
    socket!.on("session-expired", (data){
      onLogoutEvent?.call(data);
    });

    socket!.on("session-join", (data){
      onLoginEvent?.call(data);
    });

  }

  void joinSession(String userId){
    socket!.emit("user-join", userId);
  }


}