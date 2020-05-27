///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'data.pbenum.dart';

export 'data.pbenum.dart';

class ProcessId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProcessId', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOS(1, 'host')
    ..a<$core.int>(2, 'port', $pb.PbFieldType.O3)
    ..aOS(3, 'owner')
    ..a<$core.int>(4, 'index', $pb.PbFieldType.O3)
    ..a<$core.int>(5, 'rank', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ProcessId._() : super();
  factory ProcessId() => create();
  factory ProcessId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProcessId clone() => ProcessId()..mergeFromMessage(this);
  ProcessId copyWith(void Function(ProcessId) updates) => super.copyWith((message) => updates(message as ProcessId));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessId create() => ProcessId._();
  ProcessId createEmptyInstance() => create();
  static $pb.PbList<ProcessId> createRepeated() => $pb.PbList<ProcessId>();
  @$core.pragma('dart2js:noInline')
  static ProcessId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessId>(create);
  static ProcessId _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get host => $_getSZ(0);
  @$pb.TagNumber(1)
  set host($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get owner => $_getSZ(2);
  @$pb.TagNumber(3)
  set owner($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get index => $_getIZ(3);
  @$pb.TagNumber(4)
  set index($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get rank => $_getIZ(4);
  @$pb.TagNumber(5)
  set rank($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRank() => $_has(4);
  @$pb.TagNumber(5)
  void clearRank() => clearField(5);
}

class Value extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Value', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOB(1, 'defined')
    ..a<$core.int>(2, 'v', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Value._() : super();
  factory Value() => create();
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Value clone() => Value()..mergeFromMessage(this);
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get defined => $_getBF(0);
  @$pb.TagNumber(1)
  set defined($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDefined() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefined() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get v => $_getIZ(1);
  @$pb.TagNumber(2)
  set v($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasV() => $_has(1);
  @$pb.TagNumber(2)
  void clearV() => clearField(2);
}

class AppRegistration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppRegistration', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOS(1, 'owner')
    ..a<$core.int>(2, 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AppRegistration._() : super();
  factory AppRegistration() => create();
  factory AppRegistration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppRegistration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppRegistration clone() => AppRegistration()..mergeFromMessage(this);
  AppRegistration copyWith(void Function(AppRegistration) updates) => super.copyWith((message) => updates(message as AppRegistration));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppRegistration create() => AppRegistration._();
  AppRegistration createEmptyInstance() => create();
  static $pb.PbList<AppRegistration> createRepeated() => $pb.PbList<AppRegistration>();
  @$core.pragma('dart2js:noInline')
  static AppRegistration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppRegistration>(create);
  static AppRegistration _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get owner => $_getSZ(0);
  @$pb.TagNumber(1)
  set owner($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class AppPropose extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppPropose', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..pc<ProcessId>(2, 'processes', $pb.PbFieldType.PM, subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  AppPropose._() : super();
  factory AppPropose() => create();
  factory AppPropose.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppPropose.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppPropose clone() => AppPropose()..mergeFromMessage(this);
  AppPropose copyWith(void Function(AppPropose) updates) => super.copyWith((message) => updates(message as AppPropose));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppPropose create() => AppPropose._();
  AppPropose createEmptyInstance() => create();
  static $pb.PbList<AppPropose> createRepeated() => $pb.PbList<AppPropose>();
  @$core.pragma('dart2js:noInline')
  static AppPropose getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppPropose>(create);
  static AppPropose _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ProcessId> get processes => $_getList(1);
}

class AppDecide extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AppDecide', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  AppDecide._() : super();
  factory AppDecide() => create();
  factory AppDecide.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppDecide.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AppDecide clone() => AppDecide()..mergeFromMessage(this);
  AppDecide copyWith(void Function(AppDecide) updates) => super.copyWith((message) => updates(message as AppDecide));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppDecide create() => AppDecide._();
  AppDecide createEmptyInstance() => create();
  static $pb.PbList<AppDecide> createRepeated() => $pb.PbList<AppDecide>();
  @$core.pragma('dart2js:noInline')
  static AppDecide getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppDecide>(create);
  static AppDecide _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class UcPropose extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UcPropose', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  UcPropose._() : super();
  factory UcPropose() => create();
  factory UcPropose.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UcPropose.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UcPropose clone() => UcPropose()..mergeFromMessage(this);
  UcPropose copyWith(void Function(UcPropose) updates) => super.copyWith((message) => updates(message as UcPropose));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UcPropose create() => UcPropose._();
  UcPropose createEmptyInstance() => create();
  static $pb.PbList<UcPropose> createRepeated() => $pb.PbList<UcPropose>();
  @$core.pragma('dart2js:noInline')
  static UcPropose getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UcPropose>(create);
  static UcPropose _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class UcDecide extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UcDecide', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  UcDecide._() : super();
  factory UcDecide() => create();
  factory UcDecide.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UcDecide.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UcDecide clone() => UcDecide()..mergeFromMessage(this);
  UcDecide copyWith(void Function(UcDecide) updates) => super.copyWith((message) => updates(message as UcDecide));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UcDecide create() => UcDecide._();
  UcDecide createEmptyInstance() => create();
  static $pb.PbList<UcDecide> createRepeated() => $pb.PbList<UcDecide>();
  @$core.pragma('dart2js:noInline')
  static UcDecide getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UcDecide>(create);
  static UcDecide _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class EpAbort extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpAbort', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpAbort._() : super();
  factory EpAbort() => create();
  factory EpAbort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpAbort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpAbort clone() => EpAbort()..mergeFromMessage(this);
  EpAbort copyWith(void Function(EpAbort) updates) => super.copyWith((message) => updates(message as EpAbort));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpAbort create() => EpAbort._();
  EpAbort createEmptyInstance() => create();
  static $pb.PbList<EpAbort> createRepeated() => $pb.PbList<EpAbort>();
  @$core.pragma('dart2js:noInline')
  static EpAbort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpAbort>(create);
  static EpAbort _defaultInstance;
}

class EpAborted extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpAborted', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..a<$core.int>(1, 'ets', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'valueTimestamp', $pb.PbFieldType.O3, protoName: 'valueTimestamp')
    ..aOM<Value>(3, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpAborted._() : super();
  factory EpAborted() => create();
  factory EpAborted.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpAborted.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpAborted clone() => EpAborted()..mergeFromMessage(this);
  EpAborted copyWith(void Function(EpAborted) updates) => super.copyWith((message) => updates(message as EpAborted));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpAborted create() => EpAborted._();
  EpAborted createEmptyInstance() => create();
  static $pb.PbList<EpAborted> createRepeated() => $pb.PbList<EpAborted>();
  @$core.pragma('dart2js:noInline')
  static EpAborted getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpAborted>(create);
  static EpAborted _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get ets => $_getIZ(0);
  @$pb.TagNumber(1)
  set ets($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEts() => $_has(0);
  @$pb.TagNumber(1)
  void clearEts() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get valueTimestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set valueTimestamp($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValueTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearValueTimestamp() => clearField(2);

  @$pb.TagNumber(3)
  Value get value => $_getN(2);
  @$pb.TagNumber(3)
  set value(Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  Value ensureValue() => $_ensure(2);
}

class EpPropose extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpPropose', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpPropose._() : super();
  factory EpPropose() => create();
  factory EpPropose.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpPropose.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpPropose clone() => EpPropose()..mergeFromMessage(this);
  EpPropose copyWith(void Function(EpPropose) updates) => super.copyWith((message) => updates(message as EpPropose));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpPropose create() => EpPropose._();
  EpPropose createEmptyInstance() => create();
  static $pb.PbList<EpPropose> createRepeated() => $pb.PbList<EpPropose>();
  @$core.pragma('dart2js:noInline')
  static EpPropose getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpPropose>(create);
  static EpPropose _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class EpDecide extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpDecide', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..a<$core.int>(1, 'ets', $pb.PbFieldType.O3)
    ..aOM<Value>(2, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpDecide._() : super();
  factory EpDecide() => create();
  factory EpDecide.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpDecide.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpDecide clone() => EpDecide()..mergeFromMessage(this);
  EpDecide copyWith(void Function(EpDecide) updates) => super.copyWith((message) => updates(message as EpDecide));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpDecide create() => EpDecide._();
  EpDecide createEmptyInstance() => create();
  static $pb.PbList<EpDecide> createRepeated() => $pb.PbList<EpDecide>();
  @$core.pragma('dart2js:noInline')
  static EpDecide getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpDecide>(create);
  static EpDecide _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get ets => $_getIZ(0);
  @$pb.TagNumber(1)
  set ets($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEts() => $_has(0);
  @$pb.TagNumber(1)
  void clearEts() => clearField(1);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class EpRead_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpRead_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpRead_._() : super();
  factory EpRead_() => create();
  factory EpRead_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpRead_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpRead_ clone() => EpRead_()..mergeFromMessage(this);
  EpRead_ copyWith(void Function(EpRead_) updates) => super.copyWith((message) => updates(message as EpRead_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpRead_ create() => EpRead_._();
  EpRead_ createEmptyInstance() => create();
  static $pb.PbList<EpRead_> createRepeated() => $pb.PbList<EpRead_>();
  @$core.pragma('dart2js:noInline')
  static EpRead_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpRead_>(create);
  static EpRead_ _defaultInstance;
}

class EpState_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpState_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..a<$core.int>(1, 'valueTimestamp', $pb.PbFieldType.O3, protoName: 'valueTimestamp')
    ..aOM<Value>(2, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpState_._() : super();
  factory EpState_() => create();
  factory EpState_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpState_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpState_ clone() => EpState_()..mergeFromMessage(this);
  EpState_ copyWith(void Function(EpState_) updates) => super.copyWith((message) => updates(message as EpState_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpState_ create() => EpState_._();
  EpState_ createEmptyInstance() => create();
  static $pb.PbList<EpState_> createRepeated() => $pb.PbList<EpState_>();
  @$core.pragma('dart2js:noInline')
  static EpState_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpState_>(create);
  static EpState_ _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get valueTimestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set valueTimestamp($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValueTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class EpWrite_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpWrite_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpWrite_._() : super();
  factory EpWrite_() => create();
  factory EpWrite_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpWrite_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpWrite_ clone() => EpWrite_()..mergeFromMessage(this);
  EpWrite_ copyWith(void Function(EpWrite_) updates) => super.copyWith((message) => updates(message as EpWrite_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpWrite_ create() => EpWrite_._();
  EpWrite_ createEmptyInstance() => create();
  static $pb.PbList<EpWrite_> createRepeated() => $pb.PbList<EpWrite_>();
  @$core.pragma('dart2js:noInline')
  static EpWrite_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpWrite_>(create);
  static EpWrite_ _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class EpAccept_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpAccept_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpAccept_._() : super();
  factory EpAccept_() => create();
  factory EpAccept_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpAccept_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpAccept_ clone() => EpAccept_()..mergeFromMessage(this);
  EpAccept_ copyWith(void Function(EpAccept_) updates) => super.copyWith((message) => updates(message as EpAccept_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpAccept_ create() => EpAccept_._();
  EpAccept_ createEmptyInstance() => create();
  static $pb.PbList<EpAccept_> createRepeated() => $pb.PbList<EpAccept_>();
  @$core.pragma('dart2js:noInline')
  static EpAccept_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpAccept_>(create);
  static EpAccept_ _defaultInstance;
}

class EpDecided_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpDecided_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Value>(1, 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  EpDecided_._() : super();
  factory EpDecided_() => create();
  factory EpDecided_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpDecided_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpDecided_ clone() => EpDecided_()..mergeFromMessage(this);
  EpDecided_ copyWith(void Function(EpDecided_) updates) => super.copyWith((message) => updates(message as EpDecided_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpDecided_ create() => EpDecided_._();
  EpDecided_ createEmptyInstance() => create();
  static $pb.PbList<EpDecided_> createRepeated() => $pb.PbList<EpDecided_>();
  @$core.pragma('dart2js:noInline')
  static EpDecided_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpDecided_>(create);
  static EpDecided_ _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class EcNack_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EcNack_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EcNack_._() : super();
  factory EcNack_() => create();
  factory EcNack_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcNack_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EcNack_ clone() => EcNack_()..mergeFromMessage(this);
  EcNack_ copyWith(void Function(EcNack_) updates) => super.copyWith((message) => updates(message as EcNack_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcNack_ create() => EcNack_._();
  EcNack_ createEmptyInstance() => create();
  static $pb.PbList<EcNack_> createRepeated() => $pb.PbList<EcNack_>();
  @$core.pragma('dart2js:noInline')
  static EcNack_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcNack_>(create);
  static EcNack_ _defaultInstance;
}

class EcStartEpoch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EcStartEpoch', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..a<$core.int>(1, 'newTimestamp', $pb.PbFieldType.O3, protoName: 'newTimestamp')
    ..aOM<ProcessId>(2, 'newLeader', protoName: 'newLeader', subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  EcStartEpoch._() : super();
  factory EcStartEpoch() => create();
  factory EcStartEpoch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcStartEpoch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EcStartEpoch clone() => EcStartEpoch()..mergeFromMessage(this);
  EcStartEpoch copyWith(void Function(EcStartEpoch) updates) => super.copyWith((message) => updates(message as EcStartEpoch));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcStartEpoch create() => EcStartEpoch._();
  EcStartEpoch createEmptyInstance() => create();
  static $pb.PbList<EcStartEpoch> createRepeated() => $pb.PbList<EcStartEpoch>();
  @$core.pragma('dart2js:noInline')
  static EcStartEpoch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcStartEpoch>(create);
  static EcStartEpoch _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get newTimestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set newTimestamp($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  ProcessId get newLeader => $_getN(1);
  @$pb.TagNumber(2)
  set newLeader(ProcessId v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewLeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewLeader() => clearField(2);
  @$pb.TagNumber(2)
  ProcessId ensureNewLeader() => $_ensure(1);
}

class EcNewEpoch_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EcNewEpoch_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..a<$core.int>(1, 'timestamp', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EcNewEpoch_._() : super();
  factory EcNewEpoch_() => create();
  factory EcNewEpoch_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcNewEpoch_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EcNewEpoch_ clone() => EcNewEpoch_()..mergeFromMessage(this);
  EcNewEpoch_ copyWith(void Function(EcNewEpoch_) updates) => super.copyWith((message) => updates(message as EcNewEpoch_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcNewEpoch_ create() => EcNewEpoch_._();
  EcNewEpoch_ createEmptyInstance() => create();
  static $pb.PbList<EcNewEpoch_> createRepeated() => $pb.PbList<EcNewEpoch_>();
  @$core.pragma('dart2js:noInline')
  static EcNewEpoch_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcNewEpoch_>(create);
  static EcNewEpoch_ _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
}

class BebBroadcast extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BebBroadcast', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Message>(1, 'message', subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  BebBroadcast._() : super();
  factory BebBroadcast() => create();
  factory BebBroadcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BebBroadcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BebBroadcast clone() => BebBroadcast()..mergeFromMessage(this);
  BebBroadcast copyWith(void Function(BebBroadcast) updates) => super.copyWith((message) => updates(message as BebBroadcast));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BebBroadcast create() => BebBroadcast._();
  BebBroadcast createEmptyInstance() => create();
  static $pb.PbList<BebBroadcast> createRepeated() => $pb.PbList<BebBroadcast>();
  @$core.pragma('dart2js:noInline')
  static BebBroadcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BebBroadcast>(create);
  static BebBroadcast _defaultInstance;

  @$pb.TagNumber(1)
  Message get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(Message v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  Message ensureMessage() => $_ensure(0);
}

class BebDeliver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BebDeliver', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<Message>(1, 'message', subBuilder: Message.create)
    ..aOM<ProcessId>(2, 'sender', subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  BebDeliver._() : super();
  factory BebDeliver() => create();
  factory BebDeliver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BebDeliver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BebDeliver clone() => BebDeliver()..mergeFromMessage(this);
  BebDeliver copyWith(void Function(BebDeliver) updates) => super.copyWith((message) => updates(message as BebDeliver));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BebDeliver create() => BebDeliver._();
  BebDeliver createEmptyInstance() => create();
  static $pb.PbList<BebDeliver> createRepeated() => $pb.PbList<BebDeliver>();
  @$core.pragma('dart2js:noInline')
  static BebDeliver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BebDeliver>(create);
  static BebDeliver _defaultInstance;

  @$pb.TagNumber(1)
  Message get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(Message v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  Message ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  ProcessId get sender => $_getN(1);
  @$pb.TagNumber(2)
  set sender(ProcessId v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);
  @$pb.TagNumber(2)
  ProcessId ensureSender() => $_ensure(1);
}

class EldTimeout extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EldTimeout', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EldTimeout._() : super();
  factory EldTimeout() => create();
  factory EldTimeout.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EldTimeout.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EldTimeout clone() => EldTimeout()..mergeFromMessage(this);
  EldTimeout copyWith(void Function(EldTimeout) updates) => super.copyWith((message) => updates(message as EldTimeout));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EldTimeout create() => EldTimeout._();
  EldTimeout createEmptyInstance() => create();
  static $pb.PbList<EldTimeout> createRepeated() => $pb.PbList<EldTimeout>();
  @$core.pragma('dart2js:noInline')
  static EldTimeout getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EldTimeout>(create);
  static EldTimeout _defaultInstance;
}

class EldTrust extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EldTrust', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<ProcessId>(1, 'process', subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  EldTrust._() : super();
  factory EldTrust() => create();
  factory EldTrust.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EldTrust.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EldTrust clone() => EldTrust()..mergeFromMessage(this);
  EldTrust copyWith(void Function(EldTrust) updates) => super.copyWith((message) => updates(message as EldTrust));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EldTrust create() => EldTrust._();
  EldTrust createEmptyInstance() => create();
  static $pb.PbList<EldTrust> createRepeated() => $pb.PbList<EldTrust>();
  @$core.pragma('dart2js:noInline')
  static EldTrust getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EldTrust>(create);
  static EldTrust _defaultInstance;

  @$pb.TagNumber(1)
  ProcessId get process => $_getN(0);
  @$pb.TagNumber(1)
  set process(ProcessId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProcess() => $_has(0);
  @$pb.TagNumber(1)
  void clearProcess() => clearField(1);
  @$pb.TagNumber(1)
  ProcessId ensureProcess() => $_ensure(0);
}

class EpfdTimeout extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpfdTimeout', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpfdTimeout._() : super();
  factory EpfdTimeout() => create();
  factory EpfdTimeout.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpfdTimeout.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpfdTimeout clone() => EpfdTimeout()..mergeFromMessage(this);
  EpfdTimeout copyWith(void Function(EpfdTimeout) updates) => super.copyWith((message) => updates(message as EpfdTimeout));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpfdTimeout create() => EpfdTimeout._();
  EpfdTimeout createEmptyInstance() => create();
  static $pb.PbList<EpfdTimeout> createRepeated() => $pb.PbList<EpfdTimeout>();
  @$core.pragma('dart2js:noInline')
  static EpfdTimeout getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpfdTimeout>(create);
  static EpfdTimeout _defaultInstance;
}

class EpfdHeartbeatRequest_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpfdHeartbeatRequest_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpfdHeartbeatRequest_._() : super();
  factory EpfdHeartbeatRequest_() => create();
  factory EpfdHeartbeatRequest_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpfdHeartbeatRequest_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpfdHeartbeatRequest_ clone() => EpfdHeartbeatRequest_()..mergeFromMessage(this);
  EpfdHeartbeatRequest_ copyWith(void Function(EpfdHeartbeatRequest_) updates) => super.copyWith((message) => updates(message as EpfdHeartbeatRequest_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpfdHeartbeatRequest_ create() => EpfdHeartbeatRequest_._();
  EpfdHeartbeatRequest_ createEmptyInstance() => create();
  static $pb.PbList<EpfdHeartbeatRequest_> createRepeated() => $pb.PbList<EpfdHeartbeatRequest_>();
  @$core.pragma('dart2js:noInline')
  static EpfdHeartbeatRequest_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpfdHeartbeatRequest_>(create);
  static EpfdHeartbeatRequest_ _defaultInstance;
}

class EpfdHeartbeatReply_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpfdHeartbeatReply_', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EpfdHeartbeatReply_._() : super();
  factory EpfdHeartbeatReply_() => create();
  factory EpfdHeartbeatReply_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpfdHeartbeatReply_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpfdHeartbeatReply_ clone() => EpfdHeartbeatReply_()..mergeFromMessage(this);
  EpfdHeartbeatReply_ copyWith(void Function(EpfdHeartbeatReply_) updates) => super.copyWith((message) => updates(message as EpfdHeartbeatReply_));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpfdHeartbeatReply_ create() => EpfdHeartbeatReply_._();
  EpfdHeartbeatReply_ createEmptyInstance() => create();
  static $pb.PbList<EpfdHeartbeatReply_> createRepeated() => $pb.PbList<EpfdHeartbeatReply_>();
  @$core.pragma('dart2js:noInline')
  static EpfdHeartbeatReply_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpfdHeartbeatReply_>(create);
  static EpfdHeartbeatReply_ _defaultInstance;
}

class EpfdSuspect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpfdSuspect', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<ProcessId>(1, 'process', subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  EpfdSuspect._() : super();
  factory EpfdSuspect() => create();
  factory EpfdSuspect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpfdSuspect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpfdSuspect clone() => EpfdSuspect()..mergeFromMessage(this);
  EpfdSuspect copyWith(void Function(EpfdSuspect) updates) => super.copyWith((message) => updates(message as EpfdSuspect));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpfdSuspect create() => EpfdSuspect._();
  EpfdSuspect createEmptyInstance() => create();
  static $pb.PbList<EpfdSuspect> createRepeated() => $pb.PbList<EpfdSuspect>();
  @$core.pragma('dart2js:noInline')
  static EpfdSuspect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpfdSuspect>(create);
  static EpfdSuspect _defaultInstance;

  @$pb.TagNumber(1)
  ProcessId get process => $_getN(0);
  @$pb.TagNumber(1)
  set process(ProcessId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProcess() => $_has(0);
  @$pb.TagNumber(1)
  void clearProcess() => clearField(1);
  @$pb.TagNumber(1)
  ProcessId ensureProcess() => $_ensure(0);
}

class EpfdRestore extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EpfdRestore', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<ProcessId>(1, 'process', subBuilder: ProcessId.create)
    ..hasRequiredFields = false
  ;

  EpfdRestore._() : super();
  factory EpfdRestore() => create();
  factory EpfdRestore.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EpfdRestore.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EpfdRestore clone() => EpfdRestore()..mergeFromMessage(this);
  EpfdRestore copyWith(void Function(EpfdRestore) updates) => super.copyWith((message) => updates(message as EpfdRestore));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EpfdRestore create() => EpfdRestore._();
  EpfdRestore createEmptyInstance() => create();
  static $pb.PbList<EpfdRestore> createRepeated() => $pb.PbList<EpfdRestore>();
  @$core.pragma('dart2js:noInline')
  static EpfdRestore getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EpfdRestore>(create);
  static EpfdRestore _defaultInstance;

  @$pb.TagNumber(1)
  ProcessId get process => $_getN(0);
  @$pb.TagNumber(1)
  set process(ProcessId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProcess() => $_has(0);
  @$pb.TagNumber(1)
  void clearProcess() => clearField(1);
  @$pb.TagNumber(1)
  ProcessId ensureProcess() => $_ensure(0);
}

class PlSend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlSend', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<ProcessId>(1, 'destination', subBuilder: ProcessId.create)
    ..aOM<Message>(2, 'message', subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  PlSend._() : super();
  factory PlSend() => create();
  factory PlSend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlSend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlSend clone() => PlSend()..mergeFromMessage(this);
  PlSend copyWith(void Function(PlSend) updates) => super.copyWith((message) => updates(message as PlSend));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlSend create() => PlSend._();
  PlSend createEmptyInstance() => create();
  static $pb.PbList<PlSend> createRepeated() => $pb.PbList<PlSend>();
  @$core.pragma('dart2js:noInline')
  static PlSend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlSend>(create);
  static PlSend _defaultInstance;

  @$pb.TagNumber(1)
  ProcessId get destination => $_getN(0);
  @$pb.TagNumber(1)
  set destination(ProcessId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDestination() => $_has(0);
  @$pb.TagNumber(1)
  void clearDestination() => clearField(1);
  @$pb.TagNumber(1)
  ProcessId ensureDestination() => $_ensure(0);

  @$pb.TagNumber(2)
  Message get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(Message v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  Message ensureMessage() => $_ensure(1);
}

class PlDeliver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlDeliver', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOM<ProcessId>(1, 'sender', subBuilder: ProcessId.create)
    ..aOM<Message>(2, 'message', subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  PlDeliver._() : super();
  factory PlDeliver() => create();
  factory PlDeliver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlDeliver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlDeliver clone() => PlDeliver()..mergeFromMessage(this);
  PlDeliver copyWith(void Function(PlDeliver) updates) => super.copyWith((message) => updates(message as PlDeliver));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlDeliver create() => PlDeliver._();
  PlDeliver createEmptyInstance() => create();
  static $pb.PbList<PlDeliver> createRepeated() => $pb.PbList<PlDeliver>();
  @$core.pragma('dart2js:noInline')
  static PlDeliver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlDeliver>(create);
  static PlDeliver _defaultInstance;

  @$pb.TagNumber(1)
  ProcessId get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender(ProcessId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);
  @$pb.TagNumber(1)
  ProcessId ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  Message get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(Message v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  Message ensureMessage() => $_ensure(1);
}

class NetworkMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NetworkMessage', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..aOS(1, 'senderHost', protoName: 'senderHost')
    ..a<$core.int>(2, 'senderListeningPort', $pb.PbFieldType.O3, protoName: 'senderListeningPort')
    ..aOM<Message>(3, 'message', subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  NetworkMessage._() : super();
  factory NetworkMessage() => create();
  factory NetworkMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NetworkMessage clone() => NetworkMessage()..mergeFromMessage(this);
  NetworkMessage copyWith(void Function(NetworkMessage) updates) => super.copyWith((message) => updates(message as NetworkMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkMessage create() => NetworkMessage._();
  NetworkMessage createEmptyInstance() => create();
  static $pb.PbList<NetworkMessage> createRepeated() => $pb.PbList<NetworkMessage>();
  @$core.pragma('dart2js:noInline')
  static NetworkMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkMessage>(create);
  static NetworkMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get senderHost => $_getSZ(0);
  @$pb.TagNumber(1)
  set senderHost($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderHost() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get senderListeningPort => $_getIZ(1);
  @$pb.TagNumber(2)
  set senderListeningPort($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderListeningPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderListeningPort() => clearField(2);

  @$pb.TagNumber(3)
  Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message(Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  Message ensureMessage() => $_ensure(2);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Message', package: const $pb.PackageName('main'), createEmptyInstance: create)
    ..e<Message_Type>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: Message_Type.NETWORK_MESSAGE, valueOf: Message_Type.valueOf, enumValues: Message_Type.values)
    ..aOS(2, 'messageUuid', protoName: 'messageUuid')
    ..aOS(3, 'abstractionId', protoName: 'abstractionId')
    ..aOS(4, 'systemId', protoName: 'systemId')
    ..aOM<NetworkMessage>(5, 'networkMessage', protoName: 'networkMessage', subBuilder: NetworkMessage.create)
    ..aOM<AppRegistration>(6, 'appRegistration', protoName: 'appRegistration', subBuilder: AppRegistration.create)
    ..aOM<AppPropose>(7, 'appPropose', protoName: 'appPropose', subBuilder: AppPropose.create)
    ..aOM<AppDecide>(8, 'appDecide', protoName: 'appDecide', subBuilder: AppDecide.create)
    ..aOM<UcDecide>(10, 'ucDecide', protoName: 'ucDecide', subBuilder: UcDecide.create)
    ..aOM<UcPropose>(11, 'ucPropose', protoName: 'ucPropose', subBuilder: UcPropose.create)
    ..aOM<EpAbort>(20, 'epAbort', protoName: 'epAbort', subBuilder: EpAbort.create)
    ..aOM<EpAborted>(21, 'epAborted', protoName: 'epAborted', subBuilder: EpAborted.create)
    ..aOM<EpAccept_>(22, 'epAccept', protoName: 'epAccept_', subBuilder: EpAccept_.create)
    ..aOM<EpDecide>(23, 'epDecide', protoName: 'epDecide', subBuilder: EpDecide.create)
    ..aOM<EpDecided_>(24, 'epDecided', protoName: 'epDecided_', subBuilder: EpDecided_.create)
    ..aOM<EpPropose>(25, 'epPropose', protoName: 'epPropose', subBuilder: EpPropose.create)
    ..aOM<EpRead_>(26, 'epRead', protoName: 'epRead_', subBuilder: EpRead_.create)
    ..aOM<EpState_>(27, 'epState', protoName: 'epState_', subBuilder: EpState_.create)
    ..aOM<EpWrite_>(28, 'epWrite', protoName: 'epWrite_', subBuilder: EpWrite_.create)
    ..aOM<EcNack_>(31, 'ecNack', protoName: 'ecNack_', subBuilder: EcNack_.create)
    ..aOM<EcNewEpoch_>(32, 'ecNewEpoch', protoName: 'ecNewEpoch_', subBuilder: EcNewEpoch_.create)
    ..aOM<EcStartEpoch>(33, 'ecStartEpoch', protoName: 'ecStartEpoch', subBuilder: EcStartEpoch.create)
    ..aOM<BebBroadcast>(40, 'bebBroadcast', protoName: 'bebBroadcast', subBuilder: BebBroadcast.create)
    ..aOM<BebDeliver>(41, 'bebDeliver', protoName: 'bebDeliver', subBuilder: BebDeliver.create)
    ..aOM<EldTimeout>(50, 'eldTimeout', protoName: 'eldTimeout', subBuilder: EldTimeout.create)
    ..aOM<EldTrust>(51, 'eldTrust', protoName: 'eldTrust', subBuilder: EldTrust.create)
    ..aOM<EpfdTimeout>(60, 'epfdTimeout', protoName: 'epfdTimeout', subBuilder: EpfdTimeout.create)
    ..aOM<EpfdHeartbeatRequest_>(61, 'epfdHeartbeatRequest', protoName: 'epfdHeartbeatRequest_', subBuilder: EpfdHeartbeatRequest_.create)
    ..aOM<EpfdHeartbeatReply_>(62, 'epfdHeartbeatReply', protoName: 'epfdHeartbeatReply_', subBuilder: EpfdHeartbeatReply_.create)
    ..aOM<EpfdSuspect>(63, 'epfdSuspect', protoName: 'epfdSuspect', subBuilder: EpfdSuspect.create)
    ..aOM<EpfdRestore>(64, 'epfdRestore', protoName: 'epfdRestore', subBuilder: EpfdRestore.create)
    ..aOM<PlDeliver>(70, 'plDeliver', protoName: 'plDeliver', subBuilder: PlDeliver.create)
    ..aOM<PlSend>(71, 'plSend', protoName: 'plSend', subBuilder: PlSend.create)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message() => create();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Message clone() => Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message _defaultInstance;

  @$pb.TagNumber(1)
  Message_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Message_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get messageUuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageUuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get abstractionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set abstractionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAbstractionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAbstractionId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get systemId => $_getSZ(3);
  @$pb.TagNumber(4)
  set systemId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSystemId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystemId() => clearField(4);

  @$pb.TagNumber(5)
  NetworkMessage get networkMessage => $_getN(4);
  @$pb.TagNumber(5)
  set networkMessage(NetworkMessage v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNetworkMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearNetworkMessage() => clearField(5);
  @$pb.TagNumber(5)
  NetworkMessage ensureNetworkMessage() => $_ensure(4);

  @$pb.TagNumber(6)
  AppRegistration get appRegistration => $_getN(5);
  @$pb.TagNumber(6)
  set appRegistration(AppRegistration v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppRegistration() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppRegistration() => clearField(6);
  @$pb.TagNumber(6)
  AppRegistration ensureAppRegistration() => $_ensure(5);

  @$pb.TagNumber(7)
  AppPropose get appPropose => $_getN(6);
  @$pb.TagNumber(7)
  set appPropose(AppPropose v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppPropose() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppPropose() => clearField(7);
  @$pb.TagNumber(7)
  AppPropose ensureAppPropose() => $_ensure(6);

  @$pb.TagNumber(8)
  AppDecide get appDecide => $_getN(7);
  @$pb.TagNumber(8)
  set appDecide(AppDecide v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppDecide() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppDecide() => clearField(8);
  @$pb.TagNumber(8)
  AppDecide ensureAppDecide() => $_ensure(7);

  @$pb.TagNumber(10)
  UcDecide get ucDecide => $_getN(8);
  @$pb.TagNumber(10)
  set ucDecide(UcDecide v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUcDecide() => $_has(8);
  @$pb.TagNumber(10)
  void clearUcDecide() => clearField(10);
  @$pb.TagNumber(10)
  UcDecide ensureUcDecide() => $_ensure(8);

  @$pb.TagNumber(11)
  UcPropose get ucPropose => $_getN(9);
  @$pb.TagNumber(11)
  set ucPropose(UcPropose v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUcPropose() => $_has(9);
  @$pb.TagNumber(11)
  void clearUcPropose() => clearField(11);
  @$pb.TagNumber(11)
  UcPropose ensureUcPropose() => $_ensure(9);

  @$pb.TagNumber(20)
  EpAbort get epAbort => $_getN(10);
  @$pb.TagNumber(20)
  set epAbort(EpAbort v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasEpAbort() => $_has(10);
  @$pb.TagNumber(20)
  void clearEpAbort() => clearField(20);
  @$pb.TagNumber(20)
  EpAbort ensureEpAbort() => $_ensure(10);

  @$pb.TagNumber(21)
  EpAborted get epAborted => $_getN(11);
  @$pb.TagNumber(21)
  set epAborted(EpAborted v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasEpAborted() => $_has(11);
  @$pb.TagNumber(21)
  void clearEpAborted() => clearField(21);
  @$pb.TagNumber(21)
  EpAborted ensureEpAborted() => $_ensure(11);

  @$pb.TagNumber(22)
  EpAccept_ get epAccept => $_getN(12);
  @$pb.TagNumber(22)
  set epAccept(EpAccept_ v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasEpAccept() => $_has(12);
  @$pb.TagNumber(22)
  void clearEpAccept() => clearField(22);
  @$pb.TagNumber(22)
  EpAccept_ ensureEpAccept() => $_ensure(12);

  @$pb.TagNumber(23)
  EpDecide get epDecide => $_getN(13);
  @$pb.TagNumber(23)
  set epDecide(EpDecide v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasEpDecide() => $_has(13);
  @$pb.TagNumber(23)
  void clearEpDecide() => clearField(23);
  @$pb.TagNumber(23)
  EpDecide ensureEpDecide() => $_ensure(13);

  @$pb.TagNumber(24)
  EpDecided_ get epDecided => $_getN(14);
  @$pb.TagNumber(24)
  set epDecided(EpDecided_ v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasEpDecided() => $_has(14);
  @$pb.TagNumber(24)
  void clearEpDecided() => clearField(24);
  @$pb.TagNumber(24)
  EpDecided_ ensureEpDecided() => $_ensure(14);

  @$pb.TagNumber(25)
  EpPropose get epPropose => $_getN(15);
  @$pb.TagNumber(25)
  set epPropose(EpPropose v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasEpPropose() => $_has(15);
  @$pb.TagNumber(25)
  void clearEpPropose() => clearField(25);
  @$pb.TagNumber(25)
  EpPropose ensureEpPropose() => $_ensure(15);

  @$pb.TagNumber(26)
  EpRead_ get epRead => $_getN(16);
  @$pb.TagNumber(26)
  set epRead(EpRead_ v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasEpRead() => $_has(16);
  @$pb.TagNumber(26)
  void clearEpRead() => clearField(26);
  @$pb.TagNumber(26)
  EpRead_ ensureEpRead() => $_ensure(16);

  @$pb.TagNumber(27)
  EpState_ get epState => $_getN(17);
  @$pb.TagNumber(27)
  set epState(EpState_ v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasEpState() => $_has(17);
  @$pb.TagNumber(27)
  void clearEpState() => clearField(27);
  @$pb.TagNumber(27)
  EpState_ ensureEpState() => $_ensure(17);

  @$pb.TagNumber(28)
  EpWrite_ get epWrite => $_getN(18);
  @$pb.TagNumber(28)
  set epWrite(EpWrite_ v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasEpWrite() => $_has(18);
  @$pb.TagNumber(28)
  void clearEpWrite() => clearField(28);
  @$pb.TagNumber(28)
  EpWrite_ ensureEpWrite() => $_ensure(18);

  @$pb.TagNumber(31)
  EcNack_ get ecNack => $_getN(19);
  @$pb.TagNumber(31)
  set ecNack(EcNack_ v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasEcNack() => $_has(19);
  @$pb.TagNumber(31)
  void clearEcNack() => clearField(31);
  @$pb.TagNumber(31)
  EcNack_ ensureEcNack() => $_ensure(19);

  @$pb.TagNumber(32)
  EcNewEpoch_ get ecNewEpoch => $_getN(20);
  @$pb.TagNumber(32)
  set ecNewEpoch(EcNewEpoch_ v) { setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasEcNewEpoch() => $_has(20);
  @$pb.TagNumber(32)
  void clearEcNewEpoch() => clearField(32);
  @$pb.TagNumber(32)
  EcNewEpoch_ ensureEcNewEpoch() => $_ensure(20);

  @$pb.TagNumber(33)
  EcStartEpoch get ecStartEpoch => $_getN(21);
  @$pb.TagNumber(33)
  set ecStartEpoch(EcStartEpoch v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasEcStartEpoch() => $_has(21);
  @$pb.TagNumber(33)
  void clearEcStartEpoch() => clearField(33);
  @$pb.TagNumber(33)
  EcStartEpoch ensureEcStartEpoch() => $_ensure(21);

  @$pb.TagNumber(40)
  BebBroadcast get bebBroadcast => $_getN(22);
  @$pb.TagNumber(40)
  set bebBroadcast(BebBroadcast v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasBebBroadcast() => $_has(22);
  @$pb.TagNumber(40)
  void clearBebBroadcast() => clearField(40);
  @$pb.TagNumber(40)
  BebBroadcast ensureBebBroadcast() => $_ensure(22);

  @$pb.TagNumber(41)
  BebDeliver get bebDeliver => $_getN(23);
  @$pb.TagNumber(41)
  set bebDeliver(BebDeliver v) { setField(41, v); }
  @$pb.TagNumber(41)
  $core.bool hasBebDeliver() => $_has(23);
  @$pb.TagNumber(41)
  void clearBebDeliver() => clearField(41);
  @$pb.TagNumber(41)
  BebDeliver ensureBebDeliver() => $_ensure(23);

  @$pb.TagNumber(50)
  EldTimeout get eldTimeout => $_getN(24);
  @$pb.TagNumber(50)
  set eldTimeout(EldTimeout v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasEldTimeout() => $_has(24);
  @$pb.TagNumber(50)
  void clearEldTimeout() => clearField(50);
  @$pb.TagNumber(50)
  EldTimeout ensureEldTimeout() => $_ensure(24);

  @$pb.TagNumber(51)
  EldTrust get eldTrust => $_getN(25);
  @$pb.TagNumber(51)
  set eldTrust(EldTrust v) { setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasEldTrust() => $_has(25);
  @$pb.TagNumber(51)
  void clearEldTrust() => clearField(51);
  @$pb.TagNumber(51)
  EldTrust ensureEldTrust() => $_ensure(25);

  @$pb.TagNumber(60)
  EpfdTimeout get epfdTimeout => $_getN(26);
  @$pb.TagNumber(60)
  set epfdTimeout(EpfdTimeout v) { setField(60, v); }
  @$pb.TagNumber(60)
  $core.bool hasEpfdTimeout() => $_has(26);
  @$pb.TagNumber(60)
  void clearEpfdTimeout() => clearField(60);
  @$pb.TagNumber(60)
  EpfdTimeout ensureEpfdTimeout() => $_ensure(26);

  @$pb.TagNumber(61)
  EpfdHeartbeatRequest_ get epfdHeartbeatRequest => $_getN(27);
  @$pb.TagNumber(61)
  set epfdHeartbeatRequest(EpfdHeartbeatRequest_ v) { setField(61, v); }
  @$pb.TagNumber(61)
  $core.bool hasEpfdHeartbeatRequest() => $_has(27);
  @$pb.TagNumber(61)
  void clearEpfdHeartbeatRequest() => clearField(61);
  @$pb.TagNumber(61)
  EpfdHeartbeatRequest_ ensureEpfdHeartbeatRequest() => $_ensure(27);

  @$pb.TagNumber(62)
  EpfdHeartbeatReply_ get epfdHeartbeatReply => $_getN(28);
  @$pb.TagNumber(62)
  set epfdHeartbeatReply(EpfdHeartbeatReply_ v) { setField(62, v); }
  @$pb.TagNumber(62)
  $core.bool hasEpfdHeartbeatReply() => $_has(28);
  @$pb.TagNumber(62)
  void clearEpfdHeartbeatReply() => clearField(62);
  @$pb.TagNumber(62)
  EpfdHeartbeatReply_ ensureEpfdHeartbeatReply() => $_ensure(28);

  @$pb.TagNumber(63)
  EpfdSuspect get epfdSuspect => $_getN(29);
  @$pb.TagNumber(63)
  set epfdSuspect(EpfdSuspect v) { setField(63, v); }
  @$pb.TagNumber(63)
  $core.bool hasEpfdSuspect() => $_has(29);
  @$pb.TagNumber(63)
  void clearEpfdSuspect() => clearField(63);
  @$pb.TagNumber(63)
  EpfdSuspect ensureEpfdSuspect() => $_ensure(29);

  @$pb.TagNumber(64)
  EpfdRestore get epfdRestore => $_getN(30);
  @$pb.TagNumber(64)
  set epfdRestore(EpfdRestore v) { setField(64, v); }
  @$pb.TagNumber(64)
  $core.bool hasEpfdRestore() => $_has(30);
  @$pb.TagNumber(64)
  void clearEpfdRestore() => clearField(64);
  @$pb.TagNumber(64)
  EpfdRestore ensureEpfdRestore() => $_ensure(30);

  @$pb.TagNumber(70)
  PlDeliver get plDeliver => $_getN(31);
  @$pb.TagNumber(70)
  set plDeliver(PlDeliver v) { setField(70, v); }
  @$pb.TagNumber(70)
  $core.bool hasPlDeliver() => $_has(31);
  @$pb.TagNumber(70)
  void clearPlDeliver() => clearField(70);
  @$pb.TagNumber(70)
  PlDeliver ensurePlDeliver() => $_ensure(31);

  @$pb.TagNumber(71)
  PlSend get plSend => $_getN(32);
  @$pb.TagNumber(71)
  set plSend(PlSend v) { setField(71, v); }
  @$pb.TagNumber(71)
  $core.bool hasPlSend() => $_has(32);
  @$pb.TagNumber(71)
  void clearPlSend() => clearField(71);
  @$pb.TagNumber(71)
  PlSend ensurePlSend() => $_ensure(32);
}

