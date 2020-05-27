///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ProcessId$json = const {
  '1': 'ProcessId',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'port', '3': 2, '4': 1, '5': 5, '10': 'port'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'index', '3': 4, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'rank', '3': 5, '4': 1, '5': 5, '10': 'rank'},
  ],
};

const Value$json = const {
  '1': 'Value',
  '2': const [
    const {'1': 'defined', '3': 1, '4': 1, '5': 8, '10': 'defined'},
    const {'1': 'v', '3': 2, '4': 1, '5': 5, '10': 'v'},
  ],
};

const AppRegistration$json = const {
  '1': 'AppRegistration',
  '2': const [
    const {'1': 'owner', '3': 1, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
  ],
};

const AppPropose$json = const {
  '1': 'AppPropose',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
    const {'1': 'processes', '3': 2, '4': 3, '5': 11, '6': '.main.ProcessId', '10': 'processes'},
  ],
};

const AppDecide$json = const {
  '1': 'AppDecide',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const UcPropose$json = const {
  '1': 'UcPropose',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const UcDecide$json = const {
  '1': 'UcDecide',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpAbort$json = const {
  '1': 'EpAbort',
};

const EpAborted$json = const {
  '1': 'EpAborted',
  '2': const [
    const {'1': 'ets', '3': 1, '4': 1, '5': 5, '10': 'ets'},
    const {'1': 'valueTimestamp', '3': 2, '4': 1, '5': 5, '10': 'valueTimestamp'},
    const {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpPropose$json = const {
  '1': 'EpPropose',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpDecide$json = const {
  '1': 'EpDecide',
  '2': const [
    const {'1': 'ets', '3': 1, '4': 1, '5': 5, '10': 'ets'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpRead_$json = const {
  '1': 'EpRead_',
};

const EpState_$json = const {
  '1': 'EpState_',
  '2': const [
    const {'1': 'valueTimestamp', '3': 1, '4': 1, '5': 5, '10': 'valueTimestamp'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpWrite_$json = const {
  '1': 'EpWrite_',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EpAccept_$json = const {
  '1': 'EpAccept_',
};

const EpDecided_$json = const {
  '1': 'EpDecided_',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.main.Value', '10': 'value'},
  ],
};

const EcNack_$json = const {
  '1': 'EcNack_',
};

const EcStartEpoch$json = const {
  '1': 'EcStartEpoch',
  '2': const [
    const {'1': 'newTimestamp', '3': 1, '4': 1, '5': 5, '10': 'newTimestamp'},
    const {'1': 'newLeader', '3': 2, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'newLeader'},
  ],
};

const EcNewEpoch_$json = const {
  '1': 'EcNewEpoch_',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 5, '10': 'timestamp'},
  ],
};

const BebBroadcast$json = const {
  '1': 'BebBroadcast',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.main.Message', '10': 'message'},
  ],
};

const BebDeliver$json = const {
  '1': 'BebDeliver',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.main.Message', '10': 'message'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'sender'},
  ],
};

const EldTimeout$json = const {
  '1': 'EldTimeout',
};

const EldTrust$json = const {
  '1': 'EldTrust',
  '2': const [
    const {'1': 'process', '3': 1, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'process'},
  ],
};

const EpfdTimeout$json = const {
  '1': 'EpfdTimeout',
};

const EpfdHeartbeatRequest_$json = const {
  '1': 'EpfdHeartbeatRequest_',
};

const EpfdHeartbeatReply_$json = const {
  '1': 'EpfdHeartbeatReply_',
};

const EpfdSuspect$json = const {
  '1': 'EpfdSuspect',
  '2': const [
    const {'1': 'process', '3': 1, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'process'},
  ],
};

const EpfdRestore$json = const {
  '1': 'EpfdRestore',
  '2': const [
    const {'1': 'process', '3': 1, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'process'},
  ],
};

const PlSend$json = const {
  '1': 'PlSend',
  '2': const [
    const {'1': 'destination', '3': 1, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'destination'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.main.Message', '10': 'message'},
  ],
};

const PlDeliver$json = const {
  '1': 'PlDeliver',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 11, '6': '.main.ProcessId', '10': 'sender'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.main.Message', '10': 'message'},
  ],
};

const NetworkMessage$json = const {
  '1': 'NetworkMessage',
  '2': const [
    const {'1': 'senderHost', '3': 1, '4': 1, '5': 9, '10': 'senderHost'},
    const {'1': 'senderListeningPort', '3': 2, '4': 1, '5': 5, '10': 'senderListeningPort'},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.main.Message', '10': 'message'},
  ],
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.main.Message.Type', '10': 'type'},
    const {'1': 'messageUuid', '3': 2, '4': 1, '5': 9, '10': 'messageUuid'},
    const {'1': 'abstractionId', '3': 3, '4': 1, '5': 9, '10': 'abstractionId'},
    const {'1': 'systemId', '3': 4, '4': 1, '5': 9, '10': 'systemId'},
    const {'1': 'networkMessage', '3': 5, '4': 1, '5': 11, '6': '.main.NetworkMessage', '10': 'networkMessage'},
    const {'1': 'appRegistration', '3': 6, '4': 1, '5': 11, '6': '.main.AppRegistration', '10': 'appRegistration'},
    const {'1': 'appPropose', '3': 7, '4': 1, '5': 11, '6': '.main.AppPropose', '10': 'appPropose'},
    const {'1': 'appDecide', '3': 8, '4': 1, '5': 11, '6': '.main.AppDecide', '10': 'appDecide'},
    const {'1': 'ucDecide', '3': 10, '4': 1, '5': 11, '6': '.main.UcDecide', '10': 'ucDecide'},
    const {'1': 'ucPropose', '3': 11, '4': 1, '5': 11, '6': '.main.UcPropose', '10': 'ucPropose'},
    const {'1': 'epAbort', '3': 20, '4': 1, '5': 11, '6': '.main.EpAbort', '10': 'epAbort'},
    const {'1': 'epAborted', '3': 21, '4': 1, '5': 11, '6': '.main.EpAborted', '10': 'epAborted'},
    const {'1': 'epAccept_', '3': 22, '4': 1, '5': 11, '6': '.main.EpAccept_', '10': 'epAccept'},
    const {'1': 'epDecide', '3': 23, '4': 1, '5': 11, '6': '.main.EpDecide', '10': 'epDecide'},
    const {'1': 'epDecided_', '3': 24, '4': 1, '5': 11, '6': '.main.EpDecided_', '10': 'epDecided'},
    const {'1': 'epPropose', '3': 25, '4': 1, '5': 11, '6': '.main.EpPropose', '10': 'epPropose'},
    const {'1': 'epRead_', '3': 26, '4': 1, '5': 11, '6': '.main.EpRead_', '10': 'epRead'},
    const {'1': 'epState_', '3': 27, '4': 1, '5': 11, '6': '.main.EpState_', '10': 'epState'},
    const {'1': 'epWrite_', '3': 28, '4': 1, '5': 11, '6': '.main.EpWrite_', '10': 'epWrite'},
    const {'1': 'ecNack_', '3': 31, '4': 1, '5': 11, '6': '.main.EcNack_', '10': 'ecNack'},
    const {'1': 'ecNewEpoch_', '3': 32, '4': 1, '5': 11, '6': '.main.EcNewEpoch_', '10': 'ecNewEpoch'},
    const {'1': 'ecStartEpoch', '3': 33, '4': 1, '5': 11, '6': '.main.EcStartEpoch', '10': 'ecStartEpoch'},
    const {'1': 'bebBroadcast', '3': 40, '4': 1, '5': 11, '6': '.main.BebBroadcast', '10': 'bebBroadcast'},
    const {'1': 'bebDeliver', '3': 41, '4': 1, '5': 11, '6': '.main.BebDeliver', '10': 'bebDeliver'},
    const {'1': 'eldTimeout', '3': 50, '4': 1, '5': 11, '6': '.main.EldTimeout', '10': 'eldTimeout'},
    const {'1': 'eldTrust', '3': 51, '4': 1, '5': 11, '6': '.main.EldTrust', '10': 'eldTrust'},
    const {'1': 'epfdTimeout', '3': 60, '4': 1, '5': 11, '6': '.main.EpfdTimeout', '10': 'epfdTimeout'},
    const {'1': 'epfdHeartbeatRequest_', '3': 61, '4': 1, '5': 11, '6': '.main.EpfdHeartbeatRequest_', '10': 'epfdHeartbeatRequest'},
    const {'1': 'epfdHeartbeatReply_', '3': 62, '4': 1, '5': 11, '6': '.main.EpfdHeartbeatReply_', '10': 'epfdHeartbeatReply'},
    const {'1': 'epfdSuspect', '3': 63, '4': 1, '5': 11, '6': '.main.EpfdSuspect', '10': 'epfdSuspect'},
    const {'1': 'epfdRestore', '3': 64, '4': 1, '5': 11, '6': '.main.EpfdRestore', '10': 'epfdRestore'},
    const {'1': 'plDeliver', '3': 70, '4': 1, '5': 11, '6': '.main.PlDeliver', '10': 'plDeliver'},
    const {'1': 'plSend', '3': 71, '4': 1, '5': 11, '6': '.main.PlSend', '10': 'plSend'},
  ],
  '4': const [Message_Type$json],
};

const Message_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'NETWORK_MESSAGE', '2': 0},
    const {'1': 'APP_REGISTRATION', '2': 5},
    const {'1': 'APP_PROPOSE', '2': 6},
    const {'1': 'APP_DECIDE', '2': 7},
    const {'1': 'UC_DECIDE', '2': 10},
    const {'1': 'UC_PROPOSE', '2': 11},
    const {'1': 'EP_ABORT', '2': 20},
    const {'1': 'EP_ABORTED', '2': 21},
    const {'1': 'EP_ACCEPT_', '2': 22},
    const {'1': 'EP_DECIDE', '2': 23},
    const {'1': 'EP_DECIDED_', '2': 24},
    const {'1': 'EP_PROPOSE', '2': 25},
    const {'1': 'EP_READ_', '2': 26},
    const {'1': 'EP_STATE_', '2': 27},
    const {'1': 'EP_WRITE_', '2': 28},
    const {'1': 'EC_NACK_', '2': 30},
    const {'1': 'EC_NEW_EPOCH_', '2': 31},
    const {'1': 'EC_START_EPOCH', '2': 32},
    const {'1': 'BEB_BROADCAST', '2': 40},
    const {'1': 'BEB_DELIVER', '2': 41},
    const {'1': 'ELD_TIMEOUT', '2': 50},
    const {'1': 'ELD_TRUST', '2': 51},
    const {'1': 'EPFD_TIMEOUT', '2': 60},
    const {'1': 'EPFD_HEARTBEAT_REQUEST', '2': 61},
    const {'1': 'EPFD_HEARTBEAT_REPLY', '2': 62},
    const {'1': 'EPFD_SUSPECT', '2': 63},
    const {'1': 'EPFD_RESTORE', '2': 64},
    const {'1': 'PL_DELIVER', '2': 70},
    const {'1': 'PL_SEND', '2': 71},
  ],
};

