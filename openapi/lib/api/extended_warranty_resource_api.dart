import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/extended_warranty_dto.dart';

class ExtendedWarrantyResourceApi {
    final Dio _dio;
    Serializers _serializers;

    ExtendedWarrantyResourceApi(this._dio, this._serializers);

        /// createExtendedWarranty
        ///
        /// 
        Future<Response<ExtendedWarrantyDTO>>createExtendedWarrantyUsingPOST(ExtendedWarrantyDTO extendedWarrantyDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranties";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(extendedWarrantyDTO);
            var jsonextendedWarrantyDTO = json.encode(serializedBody);
            bodyData = jsonextendedWarrantyDTO;

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyDTO>(
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
        /// deleteExtendedWarranty
        ///
        /// 
        Future<Response>deleteExtendedWarrantyUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranties/{id}".replaceAll("{" r'id' "}", id.toString());

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
        /// getAllExtendedWarranties
        ///
        /// 
        Future<Response<List<ExtendedWarrantyDTO>>>getAllExtendedWarrantiesUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranties";

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

                final FullType type = const FullType(BuiltList, const [const FullType(ExtendedWarrantyDTO)]);
                BuiltList<ExtendedWarrantyDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<ExtendedWarrantyDTO>>(
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
        /// getExtendedWarranty
        ///
        /// 
        Future<Response<ExtendedWarrantyDTO>>getExtendedWarrantyUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranties/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyDTO>(
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
        /// updateExtendedWarranty
        ///
        /// 
        Future<Response<ExtendedWarrantyDTO>>updateExtendedWarrantyUsingPUT(ExtendedWarrantyDTO extendedWarrantyDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/extended-warranties";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(extendedWarrantyDTO);
            var jsonextendedWarrantyDTO = json.encode(serializedBody);
            bodyData = jsonextendedWarrantyDTO;

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

        var serializer = _serializers.serializerForType(ExtendedWarrantyDTO);
        var data = _serializers.deserializeWith<ExtendedWarrantyDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ExtendedWarrantyDTO>(
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
