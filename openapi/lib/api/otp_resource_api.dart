import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/otp_response_dto.dart';

class OtpResourceApi {
    final Dio _dio;
    Serializers _serializers;

    OtpResourceApi(this._dio, this._serializers);

        /// checkBalanceOtp
        ///
        /// 
        Future<Response<OtpResponseDTO>>checkBalanceOtpUsingGET({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/otp/check-balance";

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

        var serializer = _serializers.serializerForType(OtpResponseDTO);
        var data = _serializers.deserializeWith<OtpResponseDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OtpResponseDTO>(
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
        /// getOtpToChangeNumber
        ///
        /// 
        Future<Response<OtpResponseDTO>>getOtpToChangeNumberUsingGET(String phoneNumber,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/otp/change-number/{phoneNumber}".replaceAll("{" r'phoneNumber' "}", phoneNumber.toString());

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

        var serializer = _serializers.serializerForType(OtpResponseDTO);
        var data = _serializers.deserializeWith<OtpResponseDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OtpResponseDTO>(
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
        /// getOtpToRegister
        ///
        /// 
        Future<Response<OtpResponseDTO>>getOtpToRegisterUsingGET(String phoneNumber,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/otp/register/{phoneNumber}".replaceAll("{" r'phoneNumber' "}", phoneNumber.toString());

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

        var serializer = _serializers.serializerForType(OtpResponseDTO);
        var data = _serializers.deserializeWith<OtpResponseDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OtpResponseDTO>(
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
        /// getOtpToResetPassword
        ///
        /// 
        Future<Response<OtpResponseDTO>>getOtpToResetPasswordUsingGET(String phoneNumber,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/otp/reset-password/{phoneNumber}".replaceAll("{" r'phoneNumber' "}", phoneNumber.toString());

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

        var serializer = _serializers.serializerForType(OtpResponseDTO);
        var data = _serializers.deserializeWith<OtpResponseDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OtpResponseDTO>(
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
        /// verifyOtp
        ///
        /// 
        Future<Response<OtpResponseDTO>>verifyOtpUsingGET(String phoneNumber,String providedOtp,String referenceId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/otp/verify/{phoneNumber}/{providedOtp}/{referenceId}".replaceAll("{" r'phoneNumber' "}", phoneNumber.toString()).replaceAll("{" r'providedOtp' "}", providedOtp.toString()).replaceAll("{" r'referenceId' "}", referenceId.toString());

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

        var serializer = _serializers.serializerForType(OtpResponseDTO);
        var data = _serializers.deserializeWith<OtpResponseDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<OtpResponseDTO>(
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
