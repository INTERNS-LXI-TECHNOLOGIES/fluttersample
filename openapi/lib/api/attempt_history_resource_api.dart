import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/attempt_history_dto.dart';

class AttemptHistoryResourceApi {
    final Dio _dio;
    Serializers _serializers;

    AttemptHistoryResourceApi(this._dio, this._serializers);

        /// createAttemptHistory
        ///
        /// 
        Future<Response<AttemptHistoryDTO>>createAttemptHistoryUsingPOST(AttemptHistoryDTO attemptHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/attempt-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(attemptHistoryDTO);
            var jsonattemptHistoryDTO = json.encode(serializedBody);
            bodyData = jsonattemptHistoryDTO;

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

        var serializer = _serializers.serializerForType(AttemptHistoryDTO);
        var data = _serializers.deserializeWith<AttemptHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AttemptHistoryDTO>(
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
        /// deleteAttemptHistory
        ///
        /// 
        Future<Response>deleteAttemptHistoryUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/attempt-histories/{id}".replaceAll("{" r'id' "}", id.toString());

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
        /// getAllAttemptHistories
        ///
        /// 
        Future<Response<List<AttemptHistoryDTO>>>getAllAttemptHistoriesUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/attempt-histories";

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

                final FullType type = const FullType(BuiltList, const [const FullType(AttemptHistoryDTO)]);
                BuiltList<AttemptHistoryDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<AttemptHistoryDTO>>(
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
        /// getAttemptHistory
        ///
        /// 
        Future<Response<AttemptHistoryDTO>>getAttemptHistoryUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/attempt-histories/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(AttemptHistoryDTO);
        var data = _serializers.deserializeWith<AttemptHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AttemptHistoryDTO>(
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
        /// updateAttemptHistory
        ///
        /// 
        Future<Response<AttemptHistoryDTO>>updateAttemptHistoryUsingPUT(AttemptHistoryDTO attemptHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/attempt-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(attemptHistoryDTO);
            var jsonattemptHistoryDTO = json.encode(serializedBody);
            bodyData = jsonattemptHistoryDTO;

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

        var serializer = _serializers.serializerForType(AttemptHistoryDTO);
        var data = _serializers.deserializeWith<AttemptHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<AttemptHistoryDTO>(
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
