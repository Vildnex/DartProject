///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Message_Type extends $pb.ProtobufEnum {
  static const Message_Type NETWORK_MESSAGE = Message_Type._(0, 'NETWORK_MESSAGE');
  static const Message_Type APP_REGISTRATION = Message_Type._(5, 'APP_REGISTRATION');
  static const Message_Type APP_PROPOSE = Message_Type._(6, 'APP_PROPOSE');
  static const Message_Type APP_DECIDE = Message_Type._(7, 'APP_DECIDE');
  static const Message_Type UC_DECIDE = Message_Type._(10, 'UC_DECIDE');
  static const Message_Type UC_PROPOSE = Message_Type._(11, 'UC_PROPOSE');
  static const Message_Type EP_ABORT = Message_Type._(20, 'EP_ABORT');
  static const Message_Type EP_ABORTED = Message_Type._(21, 'EP_ABORTED');
  static const Message_Type EP_ACCEPT_ = Message_Type._(22, 'EP_ACCEPT_');
  static const Message_Type EP_DECIDE = Message_Type._(23, 'EP_DECIDE');
  static const Message_Type EP_DECIDED_ = Message_Type._(24, 'EP_DECIDED_');
  static const Message_Type EP_PROPOSE = Message_Type._(25, 'EP_PROPOSE');
  static const Message_Type EP_READ_ = Message_Type._(26, 'EP_READ_');
  static const Message_Type EP_STATE_ = Message_Type._(27, 'EP_STATE_');
  static const Message_Type EP_WRITE_ = Message_Type._(28, 'EP_WRITE_');
  static const Message_Type EC_NACK_ = Message_Type._(30, 'EC_NACK_');
  static const Message_Type EC_NEW_EPOCH_ = Message_Type._(31, 'EC_NEW_EPOCH_');
  static const Message_Type EC_START_EPOCH = Message_Type._(32, 'EC_START_EPOCH');
  static const Message_Type BEB_BROADCAST = Message_Type._(40, 'BEB_BROADCAST');
  static const Message_Type BEB_DELIVER = Message_Type._(41, 'BEB_DELIVER');
  static const Message_Type ELD_TIMEOUT = Message_Type._(50, 'ELD_TIMEOUT');
  static const Message_Type ELD_TRUST = Message_Type._(51, 'ELD_TRUST');
  static const Message_Type EPFD_TIMEOUT = Message_Type._(60, 'EPFD_TIMEOUT');
  static const Message_Type EPFD_HEARTBEAT_REQUEST = Message_Type._(61, 'EPFD_HEARTBEAT_REQUEST');
  static const Message_Type EPFD_HEARTBEAT_REPLY = Message_Type._(62, 'EPFD_HEARTBEAT_REPLY');
  static const Message_Type EPFD_SUSPECT = Message_Type._(63, 'EPFD_SUSPECT');
  static const Message_Type EPFD_RESTORE = Message_Type._(64, 'EPFD_RESTORE');
  static const Message_Type PL_DELIVER = Message_Type._(70, 'PL_DELIVER');
  static const Message_Type PL_SEND = Message_Type._(71, 'PL_SEND');

  static const $core.List<Message_Type> values = <Message_Type> [
    NETWORK_MESSAGE,
    APP_REGISTRATION,
    APP_PROPOSE,
    APP_DECIDE,
    UC_DECIDE,
    UC_PROPOSE,
    EP_ABORT,
    EP_ABORTED,
    EP_ACCEPT_,
    EP_DECIDE,
    EP_DECIDED_,
    EP_PROPOSE,
    EP_READ_,
    EP_STATE_,
    EP_WRITE_,
    EC_NACK_,
    EC_NEW_EPOCH_,
    EC_START_EPOCH,
    BEB_BROADCAST,
    BEB_DELIVER,
    ELD_TIMEOUT,
    ELD_TRUST,
    EPFD_TIMEOUT,
    EPFD_HEARTBEAT_REQUEST,
    EPFD_HEARTBEAT_REPLY,
    EPFD_SUSPECT,
    EPFD_RESTORE,
    PL_DELIVER,
    PL_SEND,
  ];

  static final $core.Map<$core.int, Message_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Message_Type valueOf($core.int value) => _byValue[value];

  const Message_Type._($core.int v, $core.String n) : super(v, n);
}

