require 'virtuozzo/soap/types/relocator'
require 'soap/mapping'

module Virtuozzo              # :nodoc:
  module SOAP                 # :nodoc:
    module MappingRegistries  # :nodoc:
      # = Relocator
      #
      module Relocator
        EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
        LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
        NsProtocol = "http://www.swsoft.com/webservices/vzl/4.0.0/protocol"
        NsRelocator = "http://www.swsoft.com/webservices/vzl/4.0.0/relocator"
        NsTypes = "http://www.swsoft.com/webservices/vzl/4.0.0/types"
        NsVzarelocator = "http://www.swsoft.com/webservices/vza/4.0.0/vzarelocator"
        NsVzarelocator_0 = "http://www.swsoft.com/webservices/vza/WSDL/4.0.0/vzarelocator"
        NsVzatypes = "http://www.swsoft.com/webservices/vza/4.0.0/vzatypes"
        NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType,
          :schema_type => XSD::QName.new(NsVzarelocator, "vzarelocatorType"),
          :schema_basetype => XSD::QName.new(NsRelocator, "relocatorType"),
          :schema_element => [
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]", XSD::QName.new(NsRelocator, "migrate_p2v")]],
              ["migrate_v2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]", XSD::QName.new(NsRelocator, "migrate_v2v")]],
              ["migrate_v2p", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]", XSD::QName.new(NsRelocator, "migrate_v2p")]],
              ["calc_env_config", ["Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]", XSD::QName.new(NsRelocator, "calc_env_config")]],
              ["move", ["Virtuozzo::SOAP::Types::Relocator::Move[]", XSD::QName.new(NsRelocator, "move")]],
              ["clone", ["Virtuozzo::SOAP::Types::Relocator::Clone[]", XSD::QName.new(NsRelocator, "clone")]]
            ],
            [
              ["config", ["Virtuozzo::SOAP::Types::Relocator::Env_configType[]", XSD::QName.new(NsRelocator, "config")]],
              ["eid", ["[]", XSD::QName.new(NsRelocator, "eid")]],
              ["eid_list", ["Virtuozzo::SOAP::Types::Relocator::Eid_listType[]", XSD::QName.new(NsRelocator, "eid_list")]],
              ["hw_notes", ["Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]", XSD::QName.new(NsRelocator, "hw_notes")]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Clone_optionsType_,
          :schema_type => XSD::QName.new(NsVzarelocator, "clone_optionsType"),
          :schema_basetype => XSD::QName.new(NsRelocator, "clone_optionsType"),
          :schema_element => [
            ["fast", nil, [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_", [0, 1]],
            ["veid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_,
          :schema_type => XSD::QName.new(NsVzarelocator, "hw_notesTypes"),
          :schema_basetype => XSD::QName.new(NsRelocator, "hw_notesTypes"),
          :schema_element => [
            ["exclude", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Exclude[]", [1, nil]],
            ["warning", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Warning[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Exclude,
          :schema_name => XSD::QName.new(NsVzarelocator, "exclude"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["path", "SOAP::SOAPBase64"],
            ["discardable", "SOAP::SOAPBoolean"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Warning,
          :schema_name => XSD::QName.new(NsVzarelocator, "warning"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["message", "SOAP::SOAPString"],
            ["code", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Relocator::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Relocator::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Relocator::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Relocator::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Relocator::OperatorType[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Relocator::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Relocator::Venv_configType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Relocator::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Relocator::TransferType::Output"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Relocator::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Relocator::System_nodeType::Login", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Relocator::TransferType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Relocator::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Relocator::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Relocator::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Relocator::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Relocator::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Relocator::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Relocator::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Relocator::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Swap", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Relocator::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Relocator::Ip_poolType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Relocator::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Relocator::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Relocator::Root_credentialType::Objects", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Relocator::CredentialType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Relocator::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Relocator::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Relocator::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Relocator::TokenType::Source", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Relocator::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Relocator::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Relocator::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Relocator::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Relocator::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Relocator::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Relocator::EventType::C_Data", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Relocator::Event_dataType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Relocator::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Relocator::AceType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Net_deviceType::Status", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Relocator::Voc_parameterType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Relocator::IntervalType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Relocator::Perf_statType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Relocator::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Relocator::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Relocator::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Relocator::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Relocator::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Relocator::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Relocator::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_infoType_,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Relocator::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Relocator::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Relocator::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Relocator::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType,
          :schema_type => XSD::QName.new(NsRelocator, "relocatorType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]"],
              ["migrate_v2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]"],
              ["migrate_v2p", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]"],
              ["calc_env_config", "Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]"],
              ["move", "Virtuozzo::SOAP::Types::Relocator::Move[]"],
              ["clone", "Virtuozzo::SOAP::Types::Relocator::Clone[]"]
            ],
            [
              ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType[]"],
              ["eid", "[]"],
              ["eid_list", "Virtuozzo::SOAP::Types::Relocator::Eid_listType[]"],
              ["hw_notes", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]"]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Clone_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "clone_optionsType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "p2v_migrate_optionsType"),
          :schema_element => [
            ["exclude", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Exclude", [0, 1]],
            ["keep_dst", "SOAP::SOAPBoolean", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["service", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Service[]", [0, nil]],
            ["quota", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Exclude,
          :schema_name => XSD::QName.new(NsRelocator, "exclude"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["path", "SOAP::SOAPBase64[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Service,
          :schema_name => XSD::QName.new(NsRelocator, "service"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota::Partition,
          :schema_name => XSD::QName.new(NsRelocator, "partition"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota,
          :schema_name => XSD::QName.new(NsRelocator, "quota"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["partition", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota::Partition"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::V2v_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "v2v_migrate_optionsType"),
          :schema_element => [
            ["force", nil, [0, 1]],
            ["nostart", nil, [0, 1]],
            ["remove", "SOAP::SOAPBoolean", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::V2p_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "v2p_migrate_optionsType"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes,
          :schema_type => XSD::QName.new(NsRelocator, "hw_notesTypes"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType,
          :schema_type => XSD::QName.new(NsVzarelocator, "vzarelocatorType"),
          :schema_basetype => XSD::QName.new(NsRelocator, "relocatorType"),
          :schema_element => [
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]", XSD::QName.new(NsRelocator, "migrate_p2v")]],
              ["migrate_v2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]", XSD::QName.new(NsRelocator, "migrate_v2v")]],
              ["migrate_v2p", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]", XSD::QName.new(NsRelocator, "migrate_v2p")]],
              ["calc_env_config", ["Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]", XSD::QName.new(NsRelocator, "calc_env_config")]],
              ["move", ["Virtuozzo::SOAP::Types::Relocator::Move[]", XSD::QName.new(NsRelocator, "move")]],
              ["clone", ["Virtuozzo::SOAP::Types::Relocator::Clone[]", XSD::QName.new(NsRelocator, "clone")]]
            ],
            [
              ["config", ["Virtuozzo::SOAP::Types::Relocator::Env_configType[]", XSD::QName.new(NsRelocator, "config")]],
              ["eid", ["[]", XSD::QName.new(NsRelocator, "eid")]],
              ["eid_list", ["Virtuozzo::SOAP::Types::Relocator::Eid_listType[]", XSD::QName.new(NsRelocator, "eid_list")]],
              ["hw_notes", ["Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]", XSD::QName.new(NsRelocator, "hw_notes")]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Clone_optionsType_,
          :schema_type => XSD::QName.new(NsVzarelocator, "clone_optionsType"),
          :schema_basetype => XSD::QName.new(NsRelocator, "clone_optionsType"),
          :schema_element => [
            ["fast", nil, [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_", [0, 1]],
            ["veid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_,
          :schema_type => XSD::QName.new(NsVzarelocator, "hw_notesTypes"),
          :schema_basetype => XSD::QName.new(NsRelocator, "hw_notesTypes"),
          :schema_element => [
            ["exclude", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Exclude[]", [1, nil]],
            ["warning", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Warning[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Exclude,
          :schema_name => XSD::QName.new(NsVzarelocator, "exclude"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["path", "SOAP::SOAPBase64"],
            ["discardable", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes_::Warning,
          :schema_name => XSD::QName.new(NsVzarelocator, "warning"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["message", "SOAP::SOAPString"],
            ["code", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Relocator::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Relocator::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Relocator::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Relocator::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Relocator::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Relocator::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Relocator::Venv_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Relocator::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Relocator::TransferType::Output"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Relocator::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Relocator::System_nodeType::Login", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Relocator::TransferType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Relocator::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Relocator::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Relocator::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Relocator::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Relocator::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Relocator::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Relocator::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Relocator::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Swap", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Relocator::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Relocator::Ip_poolType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Relocator::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Relocator::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Relocator::Root_credentialType::Objects", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Relocator::CredentialType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Relocator::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Relocator::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Relocator::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Relocator::TokenType::Source", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Relocator::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Relocator::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Relocator::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Relocator::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Relocator::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Relocator::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Relocator::EventType::C_Data", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Relocator::Event_dataType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Relocator::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Relocator::AceType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Net_deviceType::Status", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Relocator::Voc_parameterType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Relocator::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Relocator::IntervalType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Relocator::Perf_statType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Relocator::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Relocator::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Relocator::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Relocator::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Relocator::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Relocator::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Relocator::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Relocator::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Vt_infoType_,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Relocator::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Relocator::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Relocator::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Relocator::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Relocator::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType,
          :schema_type => XSD::QName.new(NsRelocator, "relocatorType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]"],
              ["migrate_v2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]"],
              ["migrate_v2p", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]"],
              ["calc_env_config", "Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]"],
              ["move", "Virtuozzo::SOAP::Types::Relocator::Move[]"],
              ["clone", "Virtuozzo::SOAP::Types::Relocator::Clone[]"]
            ],
            [
              ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType[]"],
              ["eid", "[]"],
              ["eid_list", "Virtuozzo::SOAP::Types::Relocator::Eid_listType[]"],
              ["hw_notes", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]"]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Clone_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "clone_optionsType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "p2v_migrate_optionsType"),
          :schema_element => [
            ["exclude", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Exclude", [0, 1]],
            ["keep_dst", "SOAP::SOAPBoolean", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["service", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Service[]", [0, nil]],
            ["quota", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Exclude,
          :schema_name => XSD::QName.new(NsRelocator, "exclude"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["path", "SOAP::SOAPBase64[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Service,
          :schema_name => XSD::QName.new(NsRelocator, "service"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota::Partition,
          :schema_name => XSD::QName.new(NsRelocator, "partition"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota,
          :schema_name => XSD::QName.new(NsRelocator, "quota"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["partition", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType::Quota::Partition"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::V2v_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "v2v_migrate_optionsType"),
          :schema_element => [
            ["force", nil, [0, 1]],
            ["nostart", nil, [0, 1]],
            ["remove", "SOAP::SOAPBoolean", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]],
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::V2p_migrate_optionsType,
          :schema_type => XSD::QName.new(NsRelocator, "v2p_migrate_optionsType"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes,
          :schema_type => XSD::QName.new(NsRelocator, "hw_notesTypes"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Packet_headerType,
          :schema_name => XSD::QName.new(NsVzarelocator_0, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Relocator::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType,
          :schema_name => XSD::QName.new(NsVzarelocator, "vzarelocator"),
          :schema_element => [
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]", XSD::QName.new(NsRelocator, "migrate_p2v")]],
              ["migrate_v2v", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]", XSD::QName.new(NsRelocator, "migrate_v2v")]],
              ["migrate_v2p", ["Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]", XSD::QName.new(NsRelocator, "migrate_v2p")]],
              ["calc_env_config", ["Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]", XSD::QName.new(NsRelocator, "calc_env_config")]],
              ["move", ["Virtuozzo::SOAP::Types::Relocator::Move[]", XSD::QName.new(NsRelocator, "move")]],
              ["clone", ["Virtuozzo::SOAP::Types::Relocator::Clone[]", XSD::QName.new(NsRelocator, "clone")]]
            ],
            [
              ["config", ["Virtuozzo::SOAP::Types::Relocator::Env_configType[]", XSD::QName.new(NsRelocator, "config")]],
              ["eid", ["[]", XSD::QName.new(NsRelocator, "eid")]],
              ["eid_list", ["Virtuozzo::SOAP::Types::Relocator::Eid_listType[]", XSD::QName.new(NsRelocator, "eid_list")]],
              ["hw_notes", ["Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]", XSD::QName.new(NsRelocator, "hw_notes")]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::VzarelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Packet,
          :schema_name => XSD::QName.new(NsProtocol, "packet"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Relocator::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]],
            ["data", "Virtuozzo::SOAP::Types::Relocator::Packet::C_Data"]
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
          :class => Virtuozzo::SOAP::Types::Relocator::Packet::C_Data,
          :schema_name => XSD::QName.new(NsProtocol, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Relocator::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Packet_headerType,
          :schema_name => XSD::QName.new(NsProtocol, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Relocator::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Relocator::OperatorType,
          :schema_name => XSD::QName.new(NsProtocol, "operator"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_periodic"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Relocator::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Relocator::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Relocator::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_functional"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Relocator::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Event_dataType,
          :schema_name => XSD::QName.new(NsTypes, "event_data"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Relocator::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["net_device_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType,
          :schema_name => XSD::QName.new(NsRelocator, "relocator"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Relocator::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["migrate_p2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_p2v[]"],
              ["migrate_v2v", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2v[]"],
              ["migrate_v2p", "Virtuozzo::SOAP::Types::Relocator::Migrate_v2p[]"],
              ["calc_env_config", "Virtuozzo::SOAP::Types::Relocator::Calc_env_config[]"],
              ["move", "Virtuozzo::SOAP::Types::Relocator::Move[]"],
              ["clone", "Virtuozzo::SOAP::Types::Relocator::Clone[]"]
            ],
            [
              ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType[]"],
              ["eid", "[]"],
              ["eid_list", "Virtuozzo::SOAP::Types::Relocator::Eid_listType[]"],
              ["hw_notes", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes[]"]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::RelocatorType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_p2v,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_p2v"),
          :schema_element => [
            ["options", "Virtuozzo::SOAP::Types::Relocator::P2v_migrate_optionsType", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Relocator::Connection_infoType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_v2p,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_v2p"),
          :schema_element => [
            ["options", "Virtuozzo::SOAP::Types::Relocator::V2p_migrate_optionsType", [0, 1]],
            ["eid", nil],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::Connection_infoType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_v2v,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_v2v"),
          :schema_element => [
            ["options", "Virtuozzo::SOAP::Types::Relocator::V2v_migrate_optionsType", [0, 1]],
            ["eid_list", "Virtuozzo::SOAP::Types::Relocator::Eid_listType"],
            ["dst", "Virtuozzo::SOAP::Types::Relocator::Connection_infoType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Move,
          :schema_name => XSD::QName.new(NsRelocator, "move"),
          :schema_element => [
            ["eid", nil],
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Clone,
          :schema_name => XSD::QName.new(NsRelocator, "clone"),
          :schema_element => [
            ["eid", nil],
            ["count", "SOAP::SOAPInt"],
            ["options", "Virtuozzo::SOAP::Types::Relocator::Clone_optionsType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Env_configType,
          :schema_name => XSD::QName.new(NsRelocator, "config"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Relocator::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Relocator::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Eid_listType,
          :schema_name => XSD::QName.new(NsRelocator, "eid_list"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_p2vResponse,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_p2vResponse"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Calc_env_configResponse,
          :schema_name => XSD::QName.new(NsRelocator, "calc_env_configResponse"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Relocator::Env_configType"],
            ["hw_notes", "Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_v2pResponse,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_v2pResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Migrate_v2vResponse,
          :schema_name => XSD::QName.new(NsRelocator, "migrate_v2vResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::MoveResponse,
          :schema_name => XSD::QName.new(NsRelocator, "moveResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::CloneResponse,
          :schema_name => XSD::QName.new(NsRelocator, "cloneResponse"),
          :schema_element => [
            ["eid_list", "Virtuozzo::SOAP::Types::Relocator::Eid_listType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Relocator::Hw_notesTypes,
          :schema_name => XSD::QName.new(NsRelocator, "hw_notes"),
          :schema_element => []
        )
      end

    end
  end
end