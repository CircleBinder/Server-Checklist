import 'dart:io';
import 'dart:convert' show JSON;
import 'package:http_server/http_server.dart' show HttpBodyHandler, HttpRequestBody;
import 'package:jsonrpc2/jsonrpc_service.dart' show Notification, jsonRpcExec;
import '../lib/src/circlebinder_rpc/circlebinder_rpc.dart';

main() {
  HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, 3000).then((HttpServer server) {
    RpcDispatcher dispatcher = new RpcDispatcher();
    server.transform(new HttpBodyHandler()).listen((HttpRequestBody requestBody) {
      HttpRequest request = requestBody.request;
      setCrossOriginHeaders(request);
      switch (request.method) {
        case 'OPTIONS':
          request.response.statusCode = 204;
          request.response.close();
          break;
        case 'POST':
          jsonRpcExec(requestBody.body, dispatcher).then((result) {
            HttpResponse response = request.response;
            response.headers.set("Content-Type", "application/json; charset=UTF-8");
            response.statusCode = 200;
            if (result is Notification) {
              response.write("");
            } else {
              response.write(JSON.encode(result));
            }
            response.close();
          });
          break;
        default:
          request.response.write("");
          request.response.close();
      }
    });
  });
}

setCrossOriginHeaders(request) {
  HttpResponse response = request.response;
  response.headers.set('Access-Control-Allow-Origin', '*');
  response.headers.set("Access-Control-Allow-Methods", "POST, OPTIONS");
  response.headers.set("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
}

