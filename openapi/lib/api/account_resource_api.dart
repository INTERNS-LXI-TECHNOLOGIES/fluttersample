import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/key_and_password_vm.dart';
import 'package:openapi/model/password_change_dto.dart';
import 'package:openapi/model/user_dto.dart';
import 'package:openapi/model/managed_user_vm.dart';

class AccountResourceApi {
    final Dio _dio;
    Serializers _serializers;

    AccountResourceApi(this._dio, this._serializers);

        /// activateAccount
        ///
        /// 
        Future<Response>activateAccountUsingGET(String key,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/activate";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'key'] = key;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// changePassword
        ///
        /// 
        Future<Response>changePasswordUsingPOST(PasswordChangeDTO passwordChangeDto,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/account/change-password";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(passwordChangeDto);
            var jsonpasswordChangeDto = json.encode(serializedBody);
            bodyData = jsonpasswordChangeDto;

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
            );
            }
        /// finishPasswordReset
        ///
        /// 
        Future<Response>finishPasswordResetUsingPOST(KeyAndPasswordVM keyAndPassword,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/account/reset-password/finish";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(keyAndPassword);
            var jsonkeyAndPassword = json.encode(serializedBody);
            bodyData = jsonkeyAndPassword;

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
            );
            }
        /// getAccount
        ///
        /// 
        Future<Response<UserDTO>>getAccountUsingGET({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/account";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(UserDTO);
        var data = _serializers.deserializeWith<UserDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<UserDTO>(
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
        /// isAuthenticated
        ///
        /// 
        Future<Response<String>>isAuthenticatedUsingGET({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/authenticate";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(String);
        var data = _serializers.deserializeWith<String>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<String>(
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
        /// registerAccount
        ///
        /// 
        Future<Response>registerAccountUsingPOST(ManagedUserVM managedUserVM,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/register";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(managedUserVM);
            var jsonmanagedUserVM = json.encode(serializedBody);
            bodyData = jsonmanagedUserVM;

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
            );
            }
        /// requestPasswordReset
        ///
        /// 
        Future<Response>requestPasswordResetUsingPOST(String mail,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/account/reset-password/init";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(mail);
            var jsonmail = json.encode(serializedBody);
            bodyData = jsonmail;

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
            );
            }
        /// saveAccount
        ///
        /// 
        Future<Response>saveAccountUsingPOST(UserDTO userDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/account";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(userDTO);
            var jsonuserDTO = json.encode(serializedBody);
            bodyData = jsonuserDTO;

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
            );
            }
        }
