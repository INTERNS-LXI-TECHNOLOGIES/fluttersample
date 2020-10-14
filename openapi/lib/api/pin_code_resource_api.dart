import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/pin_code_dto.dart';

class PinCodeResourceApi {
    final Dio _dio;
    Serializers _serializers;

    PinCodeResourceApi(this._dio, this._serializers);

        /// createPinCode
        ///
        /// 
        Future<Response<PinCodeDTO>>createPinCodeUsingPOST(PinCodeDTO pinCodeDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/pin-codes";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(pinCodeDTO);
            var jsonpinCodeDTO = json.encode(serializedBody);
            bodyData = jsonpinCodeDTO;

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

        var serializer = _serializers.serializerForType(PinCodeDTO);
        var data = _serializers.deserializeWith<PinCodeDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<PinCodeDTO>(
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
        /// deletePinCode
        ///
        /// 
        Future<Response>deletePinCodeUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/pin-codes/{id}".replaceAll("{" r'id' "}", id.toString());

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
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// getAllPinCodes
        ///
        /// 
        Future<Response<List<PinCodeDTO>>>getAllPinCodesUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/pin-codes";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'page'] = page;
                queryParams[r'size'] = size;
                queryParams[r'sort'] = sort;
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

                final FullType type = const FullType(BuiltList, const [const FullType(PinCodeDTO)]);
                BuiltList<PinCodeDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<PinCodeDTO>>(
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
        /// getPinCode
        ///
        /// 
        Future<Response<PinCodeDTO>>getPinCodeUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/pin-codes/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(PinCodeDTO);
        var data = _serializers.deserializeWith<PinCodeDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<PinCodeDTO>(
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
        /// updatePinCode
        ///
        /// 
        Future<Response<PinCodeDTO>>updatePinCodeUsingPUT(PinCodeDTO pinCodeDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/pin-codes";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(pinCodeDTO);
            var jsonpinCodeDTO = json.encode(serializedBody);
            bodyData = jsonpinCodeDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(PinCodeDTO);
        var data = _serializers.deserializeWith<PinCodeDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<PinCodeDTO>(
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
