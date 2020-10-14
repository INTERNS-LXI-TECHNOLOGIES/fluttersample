import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/jwt_token.dart';
import 'package:openapi/model/login_vm.dart';

class UserJwtControllerApi {
    final Dio _dio;
    Serializers _serializers;

    UserJwtControllerApi(this._dio, this._serializers);

        /// authorize
        ///
        /// 
        Future<Response<JWTToken>>authorizeUsingPOST(LoginVM loginVM,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/authenticate";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(loginVM);
            var jsonloginVM = json.encode(serializedBody);
            bodyData = jsonloginVM;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(JWTToken);
        var data = _serializers.deserializeWith<JWTToken>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<JWTToken>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
