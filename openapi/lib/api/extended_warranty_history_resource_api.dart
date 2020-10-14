import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/extended_warranty_history_dto.dart';

class ExtendedWarrantyHistoryResourceApi {
    final Dio _dio;
    Serializers _serializers;

    ExtendedWarrantyHistoryResourceApi(this._dio, this._serializers);

        /// createExtendedWarrantyHistory
        ///
        /// 
        Future<Response<ExtendedWarrantyHistoryDTO>>createExtendedWarrantyHistoryUsingPOST(ExtendedWarrantyHistoryDTO extendedWarrantyHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranty-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(extendedWarrantyHistoryDTO);
            var jsonextendedWarrantyHistoryDTO = json.encode(serializedBody);
            bodyData = jsonextendedWarrantyHistoryDTO;

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyHistoryDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyHistoryDTO>(
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
        /// deleteExtendedWarrantyHistory
        ///
        /// 
        Future<Response>deleteExtendedWarrantyHistoryUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranty-histories/{id}".replaceAll("{" r'id' "}", id.toString());

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
        /// getAllExtendedWarrantyHistories
        ///
        /// 
        Future<Response<List<ExtendedWarrantyHistoryDTO>>>getAllExtendedWarrantyHistoriesUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranty-histories";

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

                final FullType type = const FullType(BuiltList, const [const FullType(ExtendedWarrantyHistoryDTO)]);
                BuiltList<ExtendedWarrantyHistoryDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<ExtendedWarrantyHistoryDTO>>(
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
        /// getExtendedWarrantyHistory
        ///
        /// 
        Future<Response<ExtendedWarrantyHistoryDTO>>getExtendedWarrantyHistoryUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranty-histories/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyHistoryDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyHistoryDTO>(
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
        /// updateExtendedWarrantyHistory
        ///
        /// 
        Future<Response<ExtendedWarrantyHistoryDTO>>updateExtendedWarrantyHistoryUsingPUT(ExtendedWarrantyHistoryDTO extendedWarrantyHistoryDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranty-histories";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(extendedWarrantyHistoryDTO);
            var jsonextendedWarrantyHistoryDTO = json.encode(serializedBody);
            bodyData = jsonextendedWarrantyHistoryDTO;

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyHistoryDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyHistoryDTO>(
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
