import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/service_executive_rating_dto.dart';

class ServiceExecutiveRatingResourceApi {
    final Dio _dio;
    Serializers _serializers;

    ServiceExecutiveRatingResourceApi(this._dio, this._serializers);

        /// createServiceExecutiveRating
        ///
        /// 
        Future<Response<ServiceExecutiveRatingDTO>>createServiceExecutiveRatingUsingPOST(ServiceExecutiveRatingDTO serviceExecutiveRatingDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/service-executive-ratings";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(serviceExecutiveRatingDTO);
            var jsonserviceExecutiveRatingDTO = json.encode(serializedBody);
            bodyData = jsonserviceExecutiveRatingDTO;

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

        var serializer = _serializers.serializerForType(ServiceExecutiveRatingDTO);
        var data = _serializers.deserializeWith<ServiceExecutiveRatingDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ServiceExecutiveRatingDTO>(
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
        /// deleteServiceExecutiveRating
        ///
        /// 
        Future<Response>deleteServiceExecutiveRatingUsingDELETE(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/service-executive-ratings/{id}".replaceAll("{" r'id' "}", id.toString());

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
        /// getAllServiceExecutiveRatings
        ///
        /// 
        Future<Response<List<ServiceExecutiveRatingDTO>>>getAllServiceExecutiveRatingsUsingGET({ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/service-executive-ratings";

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

                final FullType type = const FullType(BuiltList, const [const FullType(ServiceExecutiveRatingDTO)]);
                BuiltList<ServiceExecutiveRatingDTO> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<ServiceExecutiveRatingDTO>>(
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
        /// getServiceExecutiveRating
        ///
        /// 
        Future<Response<ServiceExecutiveRatingDTO>>getServiceExecutiveRatingUsingGET(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/service-executive-ratings/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(ServiceExecutiveRatingDTO);
        var data = _serializers.deserializeWith<ServiceExecutiveRatingDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ServiceExecutiveRatingDTO>(
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
        /// updateServiceExecutiveRating
        ///
        /// 
        Future<Response<ServiceExecutiveRatingDTO>>updateServiceExecutiveRatingUsingPUT(ServiceExecutiveRatingDTO serviceExecutiveRatingDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/service-executive-ratings";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(serviceExecutiveRatingDTO);
            var jsonserviceExecutiveRatingDTO = json.encode(serializedBody);
            bodyData = jsonserviceExecutiveRatingDTO;

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

        var serializer = _serializers.serializerForType(ServiceExecutiveRatingDTO);
        var data = _serializers.deserializeWith<ServiceExecutiveRatingDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ServiceExecutiveRatingDTO>(
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
