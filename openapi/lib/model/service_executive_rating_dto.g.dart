// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_executive_rating_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceExecutiveRatingDTO> _$serviceExecutiveRatingDTOSerializer =
    new _$ServiceExecutiveRatingDTOSerializer();

class _$ServiceExecutiveRatingDTOSerializer
    implements StructuredSerializer<ServiceExecutiveRatingDTO> {
  @override
  final Iterable<Type> types = const [
    ServiceExecutiveRatingDTO,
    _$ServiceExecutiveRatingDTO
  ];
  @override
  final String wireName = 'ServiceExecutiveRatingDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServiceExecutiveRatingDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.easeOfCommunication != null) {
      result
        ..add('easeOfCommunication')
        ..add(serializers.serialize(object.easeOfCommunication,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.overallRating != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(object.overallRating,
            specifiedType: const FullType(double)));
    }
    if (object.qualityOfService != null) {
      result
        ..add('qualityOfService')
        ..add(serializers.serialize(object.qualityOfService,
            specifiedType: const FullType(double)));
    }
    if (object.serviceExecutiveId != null) {
      result
        ..add('serviceExecutiveId')
        ..add(serializers.serialize(object.serviceExecutiveId,
            specifiedType: const FullType(int)));
    }
    if (object.speedOfResponse != null) {
      result
        ..add('speedOfResponse')
        ..add(serializers.serialize(object.speedOfResponse,
            specifiedType: const FullType(double)));
    }
    if (object.totalFeedbacks != null) {
      result
        ..add('totalFeedbacks')
        ..add(serializers.serialize(object.totalFeedbacks,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ServiceExecutiveRatingDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceExecutiveRatingDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'easeOfCommunication':
          result.easeOfCommunication = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'qualityOfService':
          result.qualityOfService = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'serviceExecutiveId':
          result.serviceExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'speedOfResponse':
          result.speedOfResponse = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalFeedbacks':
          result.totalFeedbacks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceExecutiveRatingDTO extends ServiceExecutiveRatingDTO {
  @override
  final double easeOfCommunication;
  @override
  final int id;
  @override
  final double overallRating;
  @override
  final double qualityOfService;
  @override
  final int serviceExecutiveId;
  @override
  final double speedOfResponse;
  @override
  final int totalFeedbacks;

  factory _$ServiceExecutiveRatingDTO(
          [void Function(ServiceExecutiveRatingDTOBuilder) updates]) =>
      (new ServiceExecutiveRatingDTOBuilder()..update(updates)).build();

  _$ServiceExecutiveRatingDTO._(
      {this.easeOfCommunication,
      this.id,
      this.overallRating,
      this.qualityOfService,
      this.serviceExecutiveId,
      this.speedOfResponse,
      this.totalFeedbacks})
      : super._();

  @override
  ServiceExecutiveRatingDTO rebuild(
          void Function(ServiceExecutiveRatingDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceExecutiveRatingDTOBuilder toBuilder() =>
      new ServiceExecutiveRatingDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceExecutiveRatingDTO &&
        easeOfCommunication == other.easeOfCommunication &&
        id == other.id &&
        overallRating == other.overallRating &&
        qualityOfService == other.qualityOfService &&
        serviceExecutiveId == other.serviceExecutiveId &&
        speedOfResponse == other.speedOfResponse &&
        totalFeedbacks == other.totalFeedbacks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, easeOfCommunication.hashCode), id.hashCode),
                        overallRating.hashCode),
                    qualityOfService.hashCode),
                serviceExecutiveId.hashCode),
            speedOfResponse.hashCode),
        totalFeedbacks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceExecutiveRatingDTO')
          ..add('easeOfCommunication', easeOfCommunication)
          ..add('id', id)
          ..add('overallRating', overallRating)
          ..add('qualityOfService', qualityOfService)
          ..add('serviceExecutiveId', serviceExecutiveId)
          ..add('speedOfResponse', speedOfResponse)
          ..add('totalFeedbacks', totalFeedbacks))
        .toString();
  }
}

class ServiceExecutiveRatingDTOBuilder
    implements
        Builder<ServiceExecutiveRatingDTO, ServiceExecutiveRatingDTOBuilder> {
  _$ServiceExecutiveRatingDTO _$v;

  double _easeOfCommunication;
  double get easeOfCommunication => _$this._easeOfCommunication;
  set easeOfCommunication(double easeOfCommunication) =>
      _$this._easeOfCommunication = easeOfCommunication;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  double _overallRating;
  double get overallRating => _$this._overallRating;
  set overallRating(double overallRating) =>
      _$this._overallRating = overallRating;

  double _qualityOfService;
  double get qualityOfService => _$this._qualityOfService;
  set qualityOfService(double qualityOfService) =>
      _$this._qualityOfService = qualityOfService;

  int _serviceExecutiveId;
  int get serviceExecutiveId => _$this._serviceExecutiveId;
  set serviceExecutiveId(int serviceExecutiveId) =>
      _$this._serviceExecutiveId = serviceExecutiveId;

  double _speedOfResponse;
  double get speedOfResponse => _$this._speedOfResponse;
  set speedOfResponse(double speedOfResponse) =>
      _$this._speedOfResponse = speedOfResponse;

  int _totalFeedbacks;
  int get totalFeedbacks => _$this._totalFeedbacks;
  set totalFeedbacks(int totalFeedbacks) =>
      _$this._totalFeedbacks = totalFeedbacks;

  ServiceExecutiveRatingDTOBuilder();

  ServiceExecutiveRatingDTOBuilder get _$this {
    if (_$v != null) {
      _easeOfCommunication = _$v.easeOfCommunication;
      _id = _$v.id;
      _overallRating = _$v.overallRating;
      _qualityOfService = _$v.qualityOfService;
      _serviceExecutiveId = _$v.serviceExecutiveId;
      _speedOfResponse = _$v.speedOfResponse;
      _totalFeedbacks = _$v.totalFeedbacks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceExecutiveRatingDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceExecutiveRatingDTO;
  }

  @override
  void update(void Function(ServiceExecutiveRatingDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceExecutiveRatingDTO build() {
    final _$result = _$v ??
        new _$ServiceExecutiveRatingDTO._(
            easeOfCommunication: easeOfCommunication,
            id: id,
            overallRating: overallRating,
            qualityOfService: qualityOfService,
            serviceExecutiveId: serviceExecutiveId,
            speedOfResponse: speedOfResponse,
            totalFeedbacks: totalFeedbacks);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
