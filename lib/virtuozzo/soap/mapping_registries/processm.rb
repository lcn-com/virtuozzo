require 'virtuozzo/soap/types/processm'
require 'soap/mapping'

module Virtuozzo              # :nodoc:
  module SOAP                 # :nodoc:
    module MappingRegistries  # :nodoc:
      # = Processm
      #
      module Processm
        EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
        LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
        NsProcessm = "http://www.swsoft.com/webservices/vzl/4.0.0/processm"
        NsProtocol = "http://www.swsoft.com/webservices/vzl/4.0.0/protocol"
        NsTypes = "http://www.swsoft.com/webservices/vzl/4.0.0/types"
        NsVzaprocessm = "http://www.swsoft.com/webservices/vza/4.0.0/vzaprocessm"
        NsVzaprocessm_0 = "http://www.swsoft.com/webservices/vza/WSDL/4.0.0/vzaprocessm"
        NsVzatypes = "http://www.swsoft.com/webservices/vza/4.0.0/vzatypes"
        NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType,
          :schema_type => XSD::QName.new(NsVzaprocessm, "vzaprocessmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill[]", [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Processm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]]
          ],
          :schema_attribute => {
            XSD::QName.new(nil, "version") => "SOAP::SOAPString",
            XSD::QName.new(nil, "id") => "SOAP::SOAPString",
            XSD::QName.new(nil, "priority") => "SOAP::SOAPString",
            XSD::QName.new(nil, "time") => "SOAP::SOAPString",
            XSD::QName.new(nil, "progress") => "SOAP::SOAPString",
            XSD::QName.new(nil, "log") => "SOAP::SOAPString",
            XSD::QName.new(nil, "type") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout_limit") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "uid") => "SOAP::SOAPInt"
          }
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Processm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Processm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Processm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Periodic_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "periodic_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["log_priority", "SOAP::SOAPInt"],
            ["monitor_priority", "SOAP::SOAPInt"],
            ["min_monitor_period", "SOAP::SOAPInt"],
            ["min_monitor_period_root", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Processm::OperatorType[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Processm::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Processm::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Processm::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Processm::Venv_configType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessesType,
          :schema_type => XSD::QName.new(NsTypes, "processesType"),
          :schema_element => [
            ["run", "SOAP::SOAPInt"],
            ["zombie", "SOAP::SOAPInt"],
            ["sleep", "SOAP::SOAPInt"],
            ["uninterrupt", "SOAP::SOAPInt"],
            ["stopped", "SOAP::SOAPInt"],
            ["total", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::CpuType,
          :schema_type => XSD::QName.new(NsTypes, "cpuType"),
          :schema_element => [
            ["mhz", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["number", "SOAP::SOAPInt"],
            ["cores", "SOAP::SOAPInt"],
            ["hyperthreads", "SOAP::SOAPInt"],
            ["units", "SOAP::SOAPInt"],
            ["family", "SOAP::SOAPString"],
            ["model", "SOAP::SOAPString"],
            ["bogomips", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Processm::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Processm::TransferType::Output"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Processm::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Processm::System_nodeType::Login", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ResourceType,
          :schema_type => XSD::QName.new(NsTypes, "resourceType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]],
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::StatsType,
          :schema_type => XSD::QName.new(NsTypes, "statsType"),
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Processm::TransferType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Processm::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Processm::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sample_confType::Vt_version,
          :schema_name => XSD::QName.new(NsTypes, "vt_version"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["platform", "SOAP::SOAPString"],
            ["architecture", "SOAP::SOAPString"],
            ["vt_technology", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Processm::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Processm::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Processm::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Processm::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Processm::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Processm::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Processm::Sys_infoType::Swap", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Processm::Ps_infoType::C_Process[]", [1, nil]],
            ["param_id", "SOAP::SOAPString[]", [1, nil]],
            ["run", "SOAP::SOAPInt"],
            ["idle", "SOAP::SOAPInt"],
            ["zombie", "SOAP::SOAPInt"],
            ["sleep", "SOAP::SOAPInt"],
            ["uninterrupt", "SOAP::SOAPInt"],
            ["stopped", "SOAP::SOAPInt"],
            ["total", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L1,
          :schema_name => XSD::QName.new(NsTypes, "l1"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L2,
          :schema_name => XSD::QName.new(NsTypes, "l2"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L3,
          :schema_name => XSD::QName.new(NsTypes, "l3"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Processm::Ip_poolType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Processm::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Processm::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Processm::Root_credentialType::Objects", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Processm::CredentialType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Processm::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Processm::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Processm::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Processm::TokenType::Source", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Processm::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Processm::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Processm::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Processm::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Processm::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Processm::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Processm::EventType::C_Data", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Processm::Event_dataType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Processm::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Processm::AceType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Processm::Net_deviceType::Status", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Voc_parameterType,
          :schema_type => XSD::QName.new(NsTypes, "voc_parameterType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["min", "SOAP::SOAPString", [0, 1]],
            ["max", "SOAP::SOAPString", [0, 1]],
            ["long", "SOAP::SOAPString", [0, 1]],
            ["short", "SOAP::SOAPString", [0, 1]],
            ["category", "SOAP::SOAPString[]", [0, nil]],
            ["complex", "SOAP::SOAPString", [0, 1]],
            ["default", "SOAP::SOAPString", [0, 1]],
            ["measure", "SOAP::SOAPString", [0, 1]],
            ["data", nil, [0, 1]],
            ["name", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Processm::Voc_parameterType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Processm::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Processm::IntervalType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Processm::Perf_statType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Processm::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Processm::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Processm::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Processm::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Processm::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Processm::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Processm::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_infoType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
            ["sve_eid", nil],
            ["version", "SOAP::SOAPString"],
            ["release", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["arch", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "arch")], [0, 1]],
            ["version", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "version")], [0, 1]],
            ["technology", "SOAP::SOAPString[]", [0, nil]],
            ["os_template", "SOAP::SOAPBoolean"],
            ["cached", "SOAP::SOAPBoolean"],
            ["path", "SOAP::SOAPBase64", [0, 1]],
            ["uptodate", "SOAP::SOAPBoolean"],
            ["base", "SOAP::SOAPBoolean", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["arch", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "arch")], [0, 1]],
            ["version", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "version")], [0, 1]],
            ["technology", "SOAP::SOAPString[]", [0, nil]],
            ["os_template", "SOAP::SOAPBoolean"],
            ["cached", "SOAP::SOAPBoolean"],
            ["path", "SOAP::SOAPBase64", [0, 1]],
            ["uptodate", "SOAP::SOAPBoolean"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Processm::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Processm::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Processm::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Processm::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType,
          :schema_type => XSD::QName.new(NsProcessm, "processmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["execute", "Virtuozzo::SOAP::Types::Processm::Execute[]", [0, 1]],
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill_[]", [0, 1]]
            ],
            [
              ["exec", "Virtuozzo::SOAP::Types::Processm::Exec[]", [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType,
          :schema_type => XSD::QName.new(NsVzaprocessm, "vzaprocessmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Processm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]]
          ],
          :schema_attribute => {
            XSD::QName.new(nil, "version") => "SOAP::SOAPString",
            XSD::QName.new(nil, "id") => "SOAP::SOAPString",
            XSD::QName.new(nil, "priority") => "SOAP::SOAPString",
            XSD::QName.new(nil, "time") => "SOAP::SOAPString",
            XSD::QName.new(nil, "progress") => "SOAP::SOAPString",
            XSD::QName.new(nil, "log") => "SOAP::SOAPString",
            XSD::QName.new(nil, "type") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout_limit") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "uid") => "SOAP::SOAPInt"
          }
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Processm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Processm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Processm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Periodic_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "periodic_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["log_priority", "SOAP::SOAPInt"],
            ["monitor_priority", "SOAP::SOAPInt"],
            ["min_monitor_period", "SOAP::SOAPInt"],
            ["min_monitor_period_root", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Processm::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Processm::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Processm::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Processm::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Processm::Venv_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessesType,
          :schema_type => XSD::QName.new(NsTypes, "processesType"),
          :schema_element => [
            ["run", "SOAP::SOAPInt"],
            ["zombie", "SOAP::SOAPInt"],
            ["sleep", "SOAP::SOAPInt"],
            ["uninterrupt", "SOAP::SOAPInt"],
            ["stopped", "SOAP::SOAPInt"],
            ["total", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::CpuType,
          :schema_type => XSD::QName.new(NsTypes, "cpuType"),
          :schema_element => [
            ["mhz", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["number", "SOAP::SOAPInt"],
            ["cores", "SOAP::SOAPInt"],
            ["hyperthreads", "SOAP::SOAPInt"],
            ["units", "SOAP::SOAPInt"],
            ["family", "SOAP::SOAPString"],
            ["model", "SOAP::SOAPString"],
            ["bogomips", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Processm::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Processm::TransferType::Output"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Processm::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Processm::System_nodeType::Login", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ResourceType,
          :schema_type => XSD::QName.new(NsTypes, "resourceType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]],
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::StatsType,
          :schema_type => XSD::QName.new(NsTypes, "statsType"),
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Processm::TransferType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Processm::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Processm::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sample_confType::Vt_version,
          :schema_name => XSD::QName.new(NsTypes, "vt_version"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["platform", "SOAP::SOAPString"],
            ["architecture", "SOAP::SOAPString"],
            ["vt_technology", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Processm::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Processm::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Processm::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Processm::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Processm::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Processm::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Processm::Sys_infoType::Swap", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Processm::Ps_infoType::C_Process[]", [1, nil]],
            ["param_id", "SOAP::SOAPString[]", [1, nil]],
            ["run", "SOAP::SOAPInt"],
            ["idle", "SOAP::SOAPInt"],
            ["zombie", "SOAP::SOAPInt"],
            ["sleep", "SOAP::SOAPInt"],
            ["uninterrupt", "SOAP::SOAPInt"],
            ["stopped", "SOAP::SOAPInt"],
            ["total", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L1,
          :schema_name => XSD::QName.new(NsTypes, "l1"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L2,
          :schema_name => XSD::QName.new(NsTypes, "l2"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Load_avg_statsType::L3,
          :schema_name => XSD::QName.new(NsTypes, "l3"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["avg", "SOAP::SOAPLong", [0, 1]],
            ["min", "SOAP::SOAPLong", [0, 1]],
            ["max", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Processm::Ip_poolType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Processm::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Processm::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Processm::Root_credentialType::Objects", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Processm::CredentialType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Processm::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Processm::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Processm::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Processm::TokenType::Source", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Processm::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Processm::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Processm::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Processm::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Processm::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Processm::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Processm::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Processm::EventType::C_Data", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Processm::Event_dataType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Processm::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Processm::AceType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Processm::Net_deviceType::Status", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Voc_parameterType,
          :schema_type => XSD::QName.new(NsTypes, "voc_parameterType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["min", "SOAP::SOAPString", [0, 1]],
            ["max", "SOAP::SOAPString", [0, 1]],
            ["long", "SOAP::SOAPString", [0, 1]],
            ["short", "SOAP::SOAPString", [0, 1]],
            ["category", "SOAP::SOAPString[]", [0, nil]],
            ["complex", "SOAP::SOAPString", [0, 1]],
            ["default", "SOAP::SOAPString", [0, 1]],
            ["measure", "SOAP::SOAPString", [0, 1]],
            ["data", nil, [0, 1]],
            ["name", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Processm::Voc_parameterType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Processm::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Processm::IntervalType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Processm::Perf_statType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Processm::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Processm::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Processm::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Processm::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Processm::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Processm::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Processm::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Processm::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Processm::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Processm::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Vt_infoType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
            ["sve_eid", nil],
            ["version", "SOAP::SOAPString"],
            ["release", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["arch", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "arch")], [0, 1]],
            ["version", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "version")], [0, 1]],
            ["technology", "SOAP::SOAPString[]", [0, nil]],
            ["os_template", "SOAP::SOAPBoolean"],
            ["cached", "SOAP::SOAPBoolean"],
            ["path", "SOAP::SOAPBase64", [0, 1]],
            ["uptodate", "SOAP::SOAPBoolean"],
            ["base", "SOAP::SOAPBoolean", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Processm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["arch", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "arch")], [0, 1]],
            ["version", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "version")], [0, 1]],
            ["technology", "SOAP::SOAPString[]", [0, nil]],
            ["os_template", "SOAP::SOAPBoolean"],
            ["cached", "SOAP::SOAPBoolean"],
            ["path", "SOAP::SOAPBase64", [0, 1]],
            ["uptodate", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Processm::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Processm::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Processm::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Processm::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Processm::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType,
          :schema_type => XSD::QName.new(NsProcessm, "processmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["execute", "Virtuozzo::SOAP::Types::Processm::Execute[]", [0, 1]],
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill_[]", [0, 1]]
            ],
            [
              ["exec", "Virtuozzo::SOAP::Types::Processm::Exec[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet_headerType,
          :schema_name => XSD::QName.new(NsVzaprocessm_0, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Processm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]]
          ],
          :schema_attribute => {
            XSD::QName.new(nil, "version") => "SOAP::SOAPString",
            XSD::QName.new(nil, "id") => "SOAP::SOAPString",
            XSD::QName.new(nil, "priority") => "SOAP::SOAPString",
            XSD::QName.new(nil, "time") => "SOAP::SOAPString",
            XSD::QName.new(nil, "progress") => "SOAP::SOAPString",
            XSD::QName.new(nil, "log") => "SOAP::SOAPString",
            XSD::QName.new(nil, "type") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout_limit") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "uid") => "SOAP::SOAPInt"
          }
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType,
          :schema_name => XSD::QName.new(NsVzaprocessm, "vzaprocessm"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::VzaprocessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Kill,
          :schema_name => XSD::QName.new(NsVzaprocessm, "kill"),
          :schema_element => [
            ["eid", nil],
            ["pid", "SOAP::SOAPInt[]", [1, nil]],
            ["signal", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::KillResponse,
          :schema_name => XSD::QName.new(NsVzaprocessm, "killResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet,
          :schema_name => XSD::QName.new(NsProtocol, "packet"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Processm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]],
            ["data", "Virtuozzo::SOAP::Types::Processm::Packet::C_Data"]
          ],
          :schema_attribute => {
            XSD::QName.new(nil, "version") => "SOAP::SOAPString",
            XSD::QName.new(nil, "id") => "SOAP::SOAPString",
            XSD::QName.new(nil, "priority") => "SOAP::SOAPString",
            XSD::QName.new(nil, "time") => "SOAP::SOAPString",
            XSD::QName.new(nil, "progress") => "SOAP::SOAPString",
            XSD::QName.new(nil, "log") => "SOAP::SOAPString",
            XSD::QName.new(nil, "type") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout_limit") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "uid") => "SOAP::SOAPInt"
          }
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet::C_Data,
          :schema_name => XSD::QName.new(NsProtocol, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Processm::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Packet_headerType,
          :schema_name => XSD::QName.new(NsProtocol, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Processm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Processm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]]
          ],
          :schema_attribute => {
            XSD::QName.new(nil, "version") => "SOAP::SOAPString",
            XSD::QName.new(nil, "id") => "SOAP::SOAPString",
            XSD::QName.new(nil, "priority") => "SOAP::SOAPString",
            XSD::QName.new(nil, "time") => "SOAP::SOAPString",
            XSD::QName.new(nil, "progress") => "SOAP::SOAPString",
            XSD::QName.new(nil, "log") => "SOAP::SOAPString",
            XSD::QName.new(nil, "type") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "timeout_limit") => "SOAP::SOAPInt",
            XSD::QName.new(nil, "uid") => "SOAP::SOAPInt"
          }
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::OperatorType,
          :schema_name => XSD::QName.new(NsProtocol, "operator"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_periodic"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Processm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Processm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Processm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_functional"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Processm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Event_dataType,
          :schema_name => XSD::QName.new(NsTypes, "event_data"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Voc_parameterType,
          :schema_name => XSD::QName.new(NsTypes, "parameter"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["min", "SOAP::SOAPString", [0, 1]],
            ["max", "SOAP::SOAPString", [0, 1]],
            ["long", "SOAP::SOAPString", [0, 1]],
            ["short", "SOAP::SOAPString", [0, 1]],
            ["category", "SOAP::SOAPString[]", [0, nil]],
            ["complex", "SOAP::SOAPString", [0, 1]],
            ["default", "SOAP::SOAPString", [0, 1]],
            ["measure", "SOAP::SOAPString", [0, 1]],
            ["data", nil, [0, 1]],
            ["name", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Voc_parameterType,
          :schema_name => XSD::QName.new(NsTypes, "category"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["min", "SOAP::SOAPString", [0, 1]],
            ["max", "SOAP::SOAPString", [0, 1]],
            ["long", "SOAP::SOAPString", [0, 1]],
            ["short", "SOAP::SOAPString", [0, 1]],
            ["category", "SOAP::SOAPString[]", [0, nil]],
            ["complex", "SOAP::SOAPString", [0, 1]],
            ["default", "SOAP::SOAPString", [0, 1]],
            ["measure", "SOAP::SOAPString", [0, 1]],
            ["data", nil, [0, 1]],
            ["name", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["net_device_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType,
          :schema_name => XSD::QName.new(NsProcessm, "processm"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Processm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Processm::ProcessmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["execute", "Virtuozzo::SOAP::Types::Processm::Execute[]", [0, 1]],
              ["kill", "Virtuozzo::SOAP::Types::Processm::Kill_[]", [0, 1]]
            ],
            [
              ["exec", "Virtuozzo::SOAP::Types::Processm::Exec[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ProcessmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Kill_,
          :schema_name => XSD::QName.new(NsProcessm, "kill"),
          :schema_element => [
            ["pid", "SOAP::SOAPInt[]", [1, nil]],
            ["signal", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Execute,
          :schema_name => XSD::QName.new(NsProcessm, "execute"),
          :schema_element => [
            ["argv", "SOAP::SOAPBase64[]", [0, nil]],
            ["envp", "SOAP::SOAPBase64[]", [0, nil]],
            ["stream_mode", nil, [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Processm::Execute::Cred"],
            ["stdio", "Virtuozzo::SOAP::Types::Processm::Execute::Stdio", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Execute::Cred,
          :schema_name => XSD::QName.new(NsProcessm, "cred"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            [ :choice,
              ["user", "SOAP::SOAPString", [0, 1]],
              ["uid", "SOAP::SOAPLong", [0, 1]]
            ],
            [ :choice,
              ["group", "SOAP::SOAPString[]", [0, nil]],
              ["gid", "SOAP::SOAPLong[]", [0, nil]]
            ],
            ["chroot", "SOAP::SOAPBase64", [0, 1]],
            ["chdir", "SOAP::SOAPBase64", [0, 1]],
            ["umask", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Execute::Stdio,
          :schema_name => XSD::QName.new(NsProcessm, "stdio"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["input", "SOAP::SOAPBase64", [0, 1]],
            ["output", nil, [0, 1]],
            ["error", nil, [0, 1]],
            ["mixed", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::Exec,
          :schema_name => XSD::QName.new(NsProcessm, "exec"),
          :schema_element => [
            ["status", "SOAP::SOAPInt"],
            ["output", "SOAP::SOAPBase64", [0, 1]],
            ["error", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::ExecuteResponse,
          :schema_name => XSD::QName.new(NsProcessm, "executeResponse"),
          :schema_element => [
            ["exec", "Virtuozzo::SOAP::Types::Processm::Exec"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Processm::KillResponse_,
          :schema_name => XSD::QName.new(NsProcessm, "killResponse"),
          :schema_element => []
        )
      end

    end
  end
end