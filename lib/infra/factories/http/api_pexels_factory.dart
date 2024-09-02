import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pokedex/infra/store/providers.dart';
import 'package:pokedex/shared/features/core/ui/controllers/core_controller.dart';
import 'package:pokedex/shared/util/constants/core.dart';
import 'package:pokedex/shared/util/logger/custom_logger.dart';

abstract class ApiPexelsFactory {
  static final CoreController _coreController = getIt<CoreController>();

  static Map<String, String> getHeaders() {
    return {
      'Authorization': Constants.pexelsKey,
    };
  }

  static String getParams(List<String>? params) {
    return params != null ? '/${params.join('/')}' : '';
  }

  static String getQueryParams(List<String>? params) {
    return params != null ? '?${params.join('&')}' : '';
  }

  static Uri getUri({
    required String url,
    required String resource,
    List<String>? params,
    List<String>? queryParams,
  }) {
    return Uri.parse('$url$resource${getParams(params)}${getQueryParams(queryParams)}');
  }

  static Future<Response> get({
    required String url,
    String? resource,
    List<String>? params,
    List<String>? queryParams,
  }) async {
    try {
      _coreController.setIsLoading(true);
      var uri = getUri(
        url: url,
        resource: resource ?? '',
        params: params,
        queryParams: queryParams,
      );

      CustomLogger().printLog(uri.toString());

      var response = await http
          .get(
            uri,
            headers: getHeaders(),
          )
          .timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        CustomLogger().printLog(response.body.toString());
        return response;
      } else {
        throw const FormatException('Houve falha na requisição pexels.');
      }
    } on TimeoutException catch (_) {
      throw const SocketException('Houve falha no servidor pexels.');
    } on SocketException catch (_) {
      throw const SocketException('Houve falha ao tentar estabelecer conexão com o servidor pexels.');
    } catch (_) {
      throw Exception('Houve falha ao tentar realizar a requisição HTTP pexels. ${_.toString()}');
    } finally {
      _coreController.setIsLoading(false);
    }
  }

  static Future<Response> getImage({required String url}) async {
    try {
      _coreController.setIsLoading(true);

      var response = await http
          .get(
            Uri.parse(url),
            headers: getHeaders(),
          )
          .timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        CustomLogger().printLog(response.body.toString());
        return response;
      } else {
        throw const FormatException('Houve falha na requisição.');
      }
    } on TimeoutException catch (_) {
      throw const SocketException('Houve falha no servidor.');
    } on SocketException catch (_) {
      throw const SocketException('Houve falha ao tentar estabelecer conexão com o servidor.');
    } catch (_) {
      throw Exception('Houve falha ao tentar realizar a requisição HTTP. ${_.toString()}');
    } finally {
      _coreController.setIsLoading(false);
    }
  }

  static Future<dynamic> post({
    required String url,
    String? resource,
    Object? body,
  }) async {
    try {
      _coreController.setIsLoading(true);
      var uri = getUri(
        url: url,
        resource: resource ?? '',
      );

      CustomLogger().printLog(uri.toString());
      CustomLogger().printLog(body.toString());

      var response = await http
          .post(
            uri,
            headers: getHeaders(),
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 20));

      if (response.statusCode == 200) {
        CustomLogger().printLog(response.body);
        return response;
      } else {
        throw const FormatException('Houve falha ao tentar serializar LoadModel.');
      }
    } on TimeoutException catch (_) {
      throw const SocketException('Houve falha no servidor.');
    } on SocketException catch (_) {
      throw const SocketException('Houve falha ao tentar estabelecer conexão com o servidor.');
    } catch (_) {
      throw Exception('Houve falha ao tentar realizar a requisição HTTP. ${_.toString()}');
    } finally {
      _coreController.setIsLoading(false);
    }
  }
}
