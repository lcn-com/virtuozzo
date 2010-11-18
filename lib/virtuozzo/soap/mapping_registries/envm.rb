require 'virtuozzo/soap/types/envm'
require 'soap/mapping'

module Virtuozzo              # :nodoc:
  module SOAP                 # :nodoc:
    module MappingRegistries  # :nodoc:
      # = Envm
      #
      module Envm
        EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
        LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
        NsEnvm = "http://www.swsoft.com/webservices/vzl/4.0.0/envm"
        NsProtocol = "http://www.swsoft.com/webservices/vzl/4.0.0/protocol"
        NsTypes = "http://www.swsoft.com/webservices/vzl/4.0.0/types"
        NsVzaenvm = "http://www.swsoft.com/webservices/vza/4.0.0/vzaenvm"
        NsVzaenvm_0 = "http://www.swsoft.com/webservices/vza/WSDL/4.0.0/vzaenvm"
        NsVzatypes = "http://www.swsoft.com/webservices/vza/4.0.0/vzatypes"
        NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType,
          :schema_type => XSD::QName.new(NsVzaenvm, "vzaenvmType"),
          :schema_basetype => XSD::QName.new(NsEnvm, "envmType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", ["Virtuozzo::SOAP::Types::Envm::Create[]", XSD::QName.new(NsEnvm, "create")]],
              ["repair", ["Virtuozzo::SOAP::Types::Envm::Repair[]", XSD::QName.new(NsEnvm, "repair")]],
              ["stop_repair", ["Virtuozzo::SOAP::Types::Envm::Stop_repair[]", XSD::QName.new(NsEnvm, "stop_repair")]],
              ["start", ["Virtuozzo::SOAP::Types::Envm::Start[]", XSD::QName.new(NsEnvm, "start")]],
              ["stop", ["Virtuozzo::SOAP::Types::Envm::Stop[]", XSD::QName.new(NsEnvm, "stop")]],
              ["restart", ["Virtuozzo::SOAP::Types::Envm::Restart[]", XSD::QName.new(NsEnvm, "restart")]],
              ["destroy", ["Virtuozzo::SOAP::Types::Envm::Destroy[]", XSD::QName.new(NsEnvm, "destroy")]],
              ["suspend", ["Virtuozzo::SOAP::Types::Envm::Suspend[]", XSD::QName.new(NsEnvm, "suspend")]],
              ["resume", ["Virtuozzo::SOAP::Types::Envm::Resume[]", XSD::QName.new(NsEnvm, "resume")]],
              ["get_info", ["Virtuozzo::SOAP::Types::Envm::Get_info[]", XSD::QName.new(NsEnvm, "get_info")]],
              ["get_list", ["Virtuozzo::SOAP::Types::Envm::Get_list[]", XSD::QName.new(NsEnvm, "get_list")]],
              ["set", ["Virtuozzo::SOAP::Types::Envm::Set[]", XSD::QName.new(NsEnvm, "set")]],
              ["put_private", ["Virtuozzo::SOAP::Types::Envm::Put_private[]", XSD::QName.new(NsEnvm, "put_private")]],
              ["get_private", ["Virtuozzo::SOAP::Types::Envm::Get_private[]", XSD::QName.new(NsEnvm, "get_private")]],
              ["get_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]", XSD::QName.new(NsEnvm, "get_vt_settings")]],
              ["set_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]", XSD::QName.new(NsEnvm, "set_vt_settings")]],
              ["get_vt_info", ["Virtuozzo::SOAP::Types::Envm::Get_vt_info[]", XSD::QName.new(NsEnvm, "get_vt_info")]],
              ["get_log", ["Virtuozzo::SOAP::Types::Envm::Get_log[]", XSD::QName.new(NsEnvm, "get_log")]],
              ["get_native_config", ["Virtuozzo::SOAP::Types::Envm::Get_native_config[]", XSD::QName.new(NsEnvm, "get_native_config")]],
              ["get_virtual_config", ["Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]", XSD::QName.new(NsEnvm, "get_virtual_config")]]
            ],
            [
              ["env", ["Virtuozzo::SOAP::Types::Envm::EnvType[]", XSD::QName.new(NsEnvm, "env")], [0, nil]],
              ["eid", ["[]", XSD::QName.new(NsEnvm, "eid")], [0, nil]],
              ["value", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "value")]],
              ["vt_settings", ["Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", XSD::QName.new(NsEnvm, "vt_settings")], [0, 1]],
              ["vt_info", ["Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", XSD::QName.new(NsEnvm, "vt_info")], [0, 1]],
              ["env_config", ["Virtuozzo::SOAP::Types::Envm::Env_configType[]", XSD::QName.new(NsEnvm, "env_config")], [0, 1]],
              ["virtual_config", ["Virtuozzo::SOAP::Types::Envm::Venv_configType[]", XSD::QName.new(NsEnvm, "virtual_config")], [0, nil]],
              ["native_config", ["Virtuozzo::SOAP::Types::Envm::Native_configType[]", XSD::QName.new(NsEnvm, "native_config")], [0, nil]],
              ["log", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "log")], [0, 1]]
            ],
            [
              ["mount", "Virtuozzo::SOAP::Types::Envm::Mount[]"],
              ["umount", "Virtuozzo::SOAP::Types::Envm::Umount[]"],
              ["set_user_password", "Virtuozzo::SOAP::Types::Envm::Set_user_password[]"],
              ["upgrade", "Virtuozzo::SOAP::Types::Envm::Upgrade[]"],
              ["determine_env", "Virtuozzo::SOAP::Types::Envm::Determine_env[]"],
              ["set_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Set_ugid_quota[]"],
              ["get_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Get_ugid_quota[]"],
              ["get_split_conf", "Virtuozzo::SOAP::Types::Envm::Get_split_conf[]"],
              ["validate", "Virtuozzo::SOAP::Types::Envm::Validate[]"],
              ["get_script", "Virtuozzo::SOAP::Types::Envm::Get_script[]"],
              ["set_script", "Virtuozzo::SOAP::Types::Envm::Set_script[]"],
              ["del_script", "Virtuozzo::SOAP::Types::Envm::Del_script[]"],
              ["recover_template", "Virtuozzo::SOAP::Types::Envm::Recover_template[]"]
            ],
            [ :choice,
              ["veid", nil],
              ["ugid_quota", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info"],
              ["config", "Virtuozzo::SOAP::Types::Envm::Venv_configType_"],
              ["validation", "Virtuozzo::SOAP::Types::Envm::ValidationType[]", [0, nil]],
              ["script", "Virtuozzo::SOAP::Types::Envm::Script"]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ugid_quota_info,
          :schema_type => XSD::QName.new(NsVzaenvm, "ugid_quota_info"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["quota", "Virtuozzo::SOAP::Types::Envm::Quota_type[]", [0, nil]],
            ["grace_period", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info::Grace_period", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ugid_quota_info::Grace_period,
          :schema_name => XSD::QName.new(NsVzaenvm, "grace_period"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["inodes", "SOAP::SOAPInt"],
            ["space", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Quota_type,
          :schema_type => XSD::QName.new(NsVzaenvm, "quota_type"),
          :schema_element => [
            ["id", "SOAP::SOAPInt"],
            ["diskspace", "Virtuozzo::SOAP::Types::Envm::Quota_limit"],
            ["diskinodes", "Virtuozzo::SOAP::Types::Envm::Quota_limit"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Quota_limit,
          :schema_type => XSD::QName.new(NsVzaenvm, "quota_limit"),
          :schema_element => [
            ["cur", "SOAP::SOAPLong"],
            ["soft", "SOAP::SOAPLong"],
            ["hard", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ValidationType,
          :schema_type => XSD::QName.new(NsVzaenvm, "validationType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["warning", "SOAP::SOAPString"],
            ["formula", "SOAP::SOAPString"],
            ["qosID", "SOAP::SOAPString[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType,
          :schema_type => XSD::QName.new(NsVzaenvm, "vzaenvm_configurationType"),
          :schema_basetype => XSD::QName.new(NsEnvm, "envm_configurationType"),
          :schema_element => [
            ["timeouts", ["Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts", XSD::QName.new(NsEnvm, "timeouts")]],
            ["start_veid", "SOAP::SOAPInt"],
            ["end_veid", "SOAP::SOAPInt"],
            ["sve_visible", "SOAP::SOAPInt"],
            ["timeouts", "Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts_"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts,
          :schema_name => XSD::QName.new(NsEnvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts_,
          :schema_name => XSD::QName.new(NsVzaenvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"],
            ["init", "SOAP::SOAPInt"],
            ["clone", "SOAP::SOAPInt"],
            ["move", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Envm::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Envm::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Envm::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Envm::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Envm::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Envm::TransferType::Output"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Envm::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Envm::System_nodeType::Login", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Envm::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Envm::TransferType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Envm::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Envm::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Envm::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Envm::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Envm::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Envm::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Envm::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Envm::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Envm::Sys_infoType::Swap", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Envm::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Envm::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Envm::Ip_poolType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Envm::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Envm::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Envm::Root_credentialType::Objects", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Envm::CredentialType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Envm::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Envm::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Envm::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Envm::TokenType::Source", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Envm::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Envm::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Envm::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Envm::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Envm::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Envm::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Envm::EventType::C_Data", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Envm::Event_dataType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Envm::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Envm::AceType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Envm::Net_deviceType::Status", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Envm::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Envm::Voc_parameterType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Envm::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Envm::IntervalType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Envm::Perf_statType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Envm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Envm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Envm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Envm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Envm::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Envm::OperatorType[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Envm::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Envm::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Envm::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Envm::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Envm::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_infoType_,
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
          :class => Virtuozzo::SOAP::Types::Envm::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Envm::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Envm::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Envm::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Envm::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType,
          :schema_type => XSD::QName.new(NsEnvm, "envmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", "Virtuozzo::SOAP::Types::Envm::Create[]"],
              ["repair", "Virtuozzo::SOAP::Types::Envm::Repair[]"],
              ["stop_repair", "Virtuozzo::SOAP::Types::Envm::Stop_repair[]"],
              ["start", "Virtuozzo::SOAP::Types::Envm::Start[]"],
              ["stop", "Virtuozzo::SOAP::Types::Envm::Stop[]"],
              ["restart", "Virtuozzo::SOAP::Types::Envm::Restart[]"],
              ["destroy", "Virtuozzo::SOAP::Types::Envm::Destroy[]"],
              ["suspend", "Virtuozzo::SOAP::Types::Envm::Suspend[]"],
              ["resume", "Virtuozzo::SOAP::Types::Envm::Resume[]"],
              ["get_info", "Virtuozzo::SOAP::Types::Envm::Get_info[]"],
              ["get_list", "Virtuozzo::SOAP::Types::Envm::Get_list[]"],
              ["set", "Virtuozzo::SOAP::Types::Envm::Set[]"],
              ["put_private", "Virtuozzo::SOAP::Types::Envm::Put_private[]"],
              ["get_private", "Virtuozzo::SOAP::Types::Envm::Get_private[]"],
              ["get_vt_settings", "Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]"],
              ["set_vt_settings", "Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]"],
              ["get_vt_info", "Virtuozzo::SOAP::Types::Envm::Get_vt_info[]"],
              ["get_log", "Virtuozzo::SOAP::Types::Envm::Get_log[]"],
              ["get_native_config", "Virtuozzo::SOAP::Types::Envm::Get_native_config[]"],
              ["get_virtual_config", "Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]"]
            ],
            [
              ["env", "Virtuozzo::SOAP::Types::Envm::EnvType[]", [0, nil]],
              ["eid", "[]", [0, nil]],
              ["value", "SOAP::SOAPBase64[]"],
              ["vt_settings", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", [0, 1]],
              ["vt_info", "Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", [0, 1]],
              ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType[]", [0, 1]],
              ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType[]", [0, nil]],
              ["native_config", "Virtuozzo::SOAP::Types::Envm::Native_configType[]", [0, nil]],
              ["log", "SOAP::SOAPBase64[]", [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Envm_configurationType,
          :schema_type => XSD::QName.new(NsEnvm, "envm_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["timeouts", "Virtuozzo::SOAP::Types::Envm::Envm_configurationType::Timeouts"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Envm_configurationType::Timeouts,
          :schema_name => XSD::QName.new(NsEnvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType,
          :schema_type => XSD::QName.new(NsVzaenvm, "vzaenvmType"),
          :schema_basetype => XSD::QName.new(NsEnvm, "envmType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", ["Virtuozzo::SOAP::Types::Envm::Create[]", XSD::QName.new(NsEnvm, "create")]],
              ["repair", ["Virtuozzo::SOAP::Types::Envm::Repair[]", XSD::QName.new(NsEnvm, "repair")]],
              ["stop_repair", ["Virtuozzo::SOAP::Types::Envm::Stop_repair[]", XSD::QName.new(NsEnvm, "stop_repair")]],
              ["start", ["Virtuozzo::SOAP::Types::Envm::Start[]", XSD::QName.new(NsEnvm, "start")]],
              ["stop", ["Virtuozzo::SOAP::Types::Envm::Stop[]", XSD::QName.new(NsEnvm, "stop")]],
              ["restart", ["Virtuozzo::SOAP::Types::Envm::Restart[]", XSD::QName.new(NsEnvm, "restart")]],
              ["destroy", ["Virtuozzo::SOAP::Types::Envm::Destroy[]", XSD::QName.new(NsEnvm, "destroy")]],
              ["suspend", ["Virtuozzo::SOAP::Types::Envm::Suspend[]", XSD::QName.new(NsEnvm, "suspend")]],
              ["resume", ["Virtuozzo::SOAP::Types::Envm::Resume[]", XSD::QName.new(NsEnvm, "resume")]],
              ["get_info", ["Virtuozzo::SOAP::Types::Envm::Get_info[]", XSD::QName.new(NsEnvm, "get_info")]],
              ["get_list", ["Virtuozzo::SOAP::Types::Envm::Get_list[]", XSD::QName.new(NsEnvm, "get_list")]],
              ["set", ["Virtuozzo::SOAP::Types::Envm::Set[]", XSD::QName.new(NsEnvm, "set")]],
              ["put_private", ["Virtuozzo::SOAP::Types::Envm::Put_private[]", XSD::QName.new(NsEnvm, "put_private")]],
              ["get_private", ["Virtuozzo::SOAP::Types::Envm::Get_private[]", XSD::QName.new(NsEnvm, "get_private")]],
              ["get_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]", XSD::QName.new(NsEnvm, "get_vt_settings")]],
              ["set_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]", XSD::QName.new(NsEnvm, "set_vt_settings")]],
              ["get_vt_info", ["Virtuozzo::SOAP::Types::Envm::Get_vt_info[]", XSD::QName.new(NsEnvm, "get_vt_info")]],
              ["get_log", ["Virtuozzo::SOAP::Types::Envm::Get_log[]", XSD::QName.new(NsEnvm, "get_log")]],
              ["get_native_config", ["Virtuozzo::SOAP::Types::Envm::Get_native_config[]", XSD::QName.new(NsEnvm, "get_native_config")]],
              ["get_virtual_config", ["Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]", XSD::QName.new(NsEnvm, "get_virtual_config")]]
            ],
            [
              ["env", ["Virtuozzo::SOAP::Types::Envm::EnvType[]", XSD::QName.new(NsEnvm, "env")], [0, nil]],
              ["eid", ["[]", XSD::QName.new(NsEnvm, "eid")], [0, nil]],
              ["value", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "value")]],
              ["vt_settings", ["Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", XSD::QName.new(NsEnvm, "vt_settings")], [0, 1]],
              ["vt_info", ["Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", XSD::QName.new(NsEnvm, "vt_info")], [0, 1]],
              ["env_config", ["Virtuozzo::SOAP::Types::Envm::Env_configType[]", XSD::QName.new(NsEnvm, "env_config")], [0, 1]],
              ["virtual_config", ["Virtuozzo::SOAP::Types::Envm::Venv_configType[]", XSD::QName.new(NsEnvm, "virtual_config")], [0, nil]],
              ["native_config", ["Virtuozzo::SOAP::Types::Envm::Native_configType[]", XSD::QName.new(NsEnvm, "native_config")], [0, nil]],
              ["log", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "log")], [0, 1]]
            ],
            [
              ["mount", "Virtuozzo::SOAP::Types::Envm::Mount[]"],
              ["umount", "Virtuozzo::SOAP::Types::Envm::Umount[]"],
              ["set_user_password", "Virtuozzo::SOAP::Types::Envm::Set_user_password[]"],
              ["upgrade", "Virtuozzo::SOAP::Types::Envm::Upgrade[]"],
              ["determine_env", "Virtuozzo::SOAP::Types::Envm::Determine_env[]"],
              ["set_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Set_ugid_quota[]"],
              ["get_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Get_ugid_quota[]"],
              ["get_split_conf", "Virtuozzo::SOAP::Types::Envm::Get_split_conf[]"],
              ["validate", "Virtuozzo::SOAP::Types::Envm::Validate[]"],
              ["get_script", "Virtuozzo::SOAP::Types::Envm::Get_script[]"],
              ["set_script", "Virtuozzo::SOAP::Types::Envm::Set_script[]"],
              ["del_script", "Virtuozzo::SOAP::Types::Envm::Del_script[]"],
              ["recover_template", "Virtuozzo::SOAP::Types::Envm::Recover_template[]"]
            ],
            [ :choice,
              ["veid", nil],
              ["ugid_quota", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info"],
              ["config", "Virtuozzo::SOAP::Types::Envm::Venv_configType_"],
              ["validation", "Virtuozzo::SOAP::Types::Envm::ValidationType[]", [0, nil]],
              ["script", "Virtuozzo::SOAP::Types::Envm::Script"]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ugid_quota_info,
          :schema_type => XSD::QName.new(NsVzaenvm, "ugid_quota_info"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["quota", "Virtuozzo::SOAP::Types::Envm::Quota_type[]", [0, nil]],
            ["grace_period", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info::Grace_period", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ugid_quota_info::Grace_period,
          :schema_name => XSD::QName.new(NsVzaenvm, "grace_period"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["inodes", "SOAP::SOAPInt"],
            ["space", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Quota_type,
          :schema_type => XSD::QName.new(NsVzaenvm, "quota_type"),
          :schema_element => [
            ["id", "SOAP::SOAPInt"],
            ["diskspace", "Virtuozzo::SOAP::Types::Envm::Quota_limit"],
            ["diskinodes", "Virtuozzo::SOAP::Types::Envm::Quota_limit"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Quota_limit,
          :schema_type => XSD::QName.new(NsVzaenvm, "quota_limit"),
          :schema_element => [
            ["cur", "SOAP::SOAPLong"],
            ["soft", "SOAP::SOAPLong"],
            ["hard", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ValidationType,
          :schema_type => XSD::QName.new(NsVzaenvm, "validationType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["warning", "SOAP::SOAPString"],
            ["formula", "SOAP::SOAPString"],
            ["qosID", "SOAP::SOAPString[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType,
          :schema_type => XSD::QName.new(NsVzaenvm, "vzaenvm_configurationType"),
          :schema_basetype => XSD::QName.new(NsEnvm, "envm_configurationType"),
          :schema_element => [
            ["timeouts", ["Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts", XSD::QName.new(NsEnvm, "timeouts")]],
            ["start_veid", "SOAP::SOAPInt"],
            ["end_veid", "SOAP::SOAPInt"],
            ["sve_visible", "SOAP::SOAPInt"],
            ["timeouts", "Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts_"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts,
          :schema_name => XSD::QName.new(NsEnvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vzaenvm_configurationType::Timeouts_,
          :schema_name => XSD::QName.new(NsVzaenvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"],
            ["init", "SOAP::SOAPInt"],
            ["clone", "SOAP::SOAPInt"],
            ["move", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Envm::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Envm::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Envm::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Envm::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Envm::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Envm::TransferType::Output"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Envm::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Envm::System_nodeType::Login", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Envm::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Envm::TransferType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Envm::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Envm::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Envm::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Envm::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Envm::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Envm::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Envm::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Envm::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Envm::Sys_infoType::Swap", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Envm::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Envm::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Envm::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Envm::Ip_poolType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Envm::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Envm::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Envm::Root_credentialType::Objects", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Envm::CredentialType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Envm::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Envm::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Envm::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Envm::TokenType::Source", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Envm::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Envm::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Envm::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Envm::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Envm::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Envm::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Envm::EventType::C_Data", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Envm::Event_dataType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Envm::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Envm::AceType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Envm::Net_deviceType::Status", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Envm::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Envm::Voc_parameterType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Envm::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Envm::IntervalType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Envm::Perf_statType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Envm::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Envm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Envm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Envm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Envm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Envm::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Envm::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Virtuozzo_configType,
          :schema_type => XSD::QName.new(NsVzatypes, "virtuozzo_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => [
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Log_optionsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_,
          :schema_type => XSD::QName.new(NsVzatypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Envm::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Envm::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Envm::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType_,
          :schema_type => XSD::QName.new(NsVzatypes, "vt_settingsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", [nil, XSD::QName.new(NsTypes, "default_sample_id")], [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType_::Parameter[]", [0, nil]],
            ["service", "Virtuozzo::SOAP::Types::Envm::Redirect_serviceType[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Envm::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType_::Parameter,
          :schema_name => XSD::QName.new(NsVzatypes, "parameter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_infoType_,
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
          :class => Virtuozzo::SOAP::Types::Envm::Redirect_serviceType,
          :schema_type => XSD::QName.new(NsVzatypes, "redirect_serviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPInt"],
            ["dst", nil],
            ["default", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::TemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "templateType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Package_std_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_std_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Package_vztemplateType,
          :schema_type => XSD::QName.new(NsVzatypes, "package_vztemplateType"),
          :schema_basetype => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")]],
            ["summary", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "summary")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::Env_security_objectType_,
          :schema_type => XSD::QName.new(NsVzatypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_element => [
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_vethType,
          :schema_type => XSD::QName.new(NsVzatypes, "net_vethType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_element => [
            ["id", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "id")], [0, 1]],
            ["ip_address", ["Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", XSD::QName.new(NsTypes, "ip_address")], [0, nil]],
            ["dhcp", [nil, XSD::QName.new(NsTypes, "dhcp")], [0, 1]],
            ["network_id", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "network_id")], [0, 1]],
            ["status", ["Virtuozzo::SOAP::Types::Envm::Net_vethType::Status", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["mac_address", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "mac_address")], [0, 1]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["default_gateway", "SOAP::SOAPString", [0, 1]],
            ["host_routed", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Net_vethType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvType_,
          :schema_type => XSD::QName.new(NsVzatypes, "envType"),
          :schema_basetype => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", [nil, XSD::QName.new(NsTypes, "parent_eid")]],
            ["eid", [nil, XSD::QName.new(NsTypes, "eid")]],
            ["status", ["Virtuozzo::SOAP::Types::Envm::Env_statusType", XSD::QName.new(NsTypes, "status")], [0, 1]],
            ["alert", ["SOAP::SOAPInt", XSD::QName.new(NsTypes, "alert")], [0, 1]],
            ["config", ["Virtuozzo::SOAP::Types::Envm::Env_configType", XSD::QName.new(NsTypes, "config")], [0, 1]],
            ["virtual_config", ["Virtuozzo::SOAP::Types::Envm::Venv_configType", XSD::QName.new(NsTypes, "virtual_config")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType,
          :schema_type => XSD::QName.new(NsEnvm, "envmType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", "Virtuozzo::SOAP::Types::Envm::Create[]"],
              ["repair", "Virtuozzo::SOAP::Types::Envm::Repair[]"],
              ["stop_repair", "Virtuozzo::SOAP::Types::Envm::Stop_repair[]"],
              ["start", "Virtuozzo::SOAP::Types::Envm::Start[]"],
              ["stop", "Virtuozzo::SOAP::Types::Envm::Stop[]"],
              ["restart", "Virtuozzo::SOAP::Types::Envm::Restart[]"],
              ["destroy", "Virtuozzo::SOAP::Types::Envm::Destroy[]"],
              ["suspend", "Virtuozzo::SOAP::Types::Envm::Suspend[]"],
              ["resume", "Virtuozzo::SOAP::Types::Envm::Resume[]"],
              ["get_info", "Virtuozzo::SOAP::Types::Envm::Get_info[]"],
              ["get_list", "Virtuozzo::SOAP::Types::Envm::Get_list[]"],
              ["set", "Virtuozzo::SOAP::Types::Envm::Set[]"],
              ["put_private", "Virtuozzo::SOAP::Types::Envm::Put_private[]"],
              ["get_private", "Virtuozzo::SOAP::Types::Envm::Get_private[]"],
              ["get_vt_settings", "Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]"],
              ["set_vt_settings", "Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]"],
              ["get_vt_info", "Virtuozzo::SOAP::Types::Envm::Get_vt_info[]"],
              ["get_log", "Virtuozzo::SOAP::Types::Envm::Get_log[]"],
              ["get_native_config", "Virtuozzo::SOAP::Types::Envm::Get_native_config[]"],
              ["get_virtual_config", "Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]"]
            ],
            [
              ["env", "Virtuozzo::SOAP::Types::Envm::EnvType[]", [0, nil]],
              ["eid", "[]", [0, nil]],
              ["value", "SOAP::SOAPBase64[]"],
              ["vt_settings", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", [0, 1]],
              ["vt_info", "Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", [0, 1]],
              ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType[]", [0, 1]],
              ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType[]", [0, nil]],
              ["native_config", "Virtuozzo::SOAP::Types::Envm::Native_configType[]", [0, nil]],
              ["log", "SOAP::SOAPBase64[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Envm_configurationType,
          :schema_type => XSD::QName.new(NsEnvm, "envm_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["timeouts", "Virtuozzo::SOAP::Types::Envm::Envm_configurationType::Timeouts"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Envm_configurationType::Timeouts,
          :schema_name => XSD::QName.new(NsEnvm, "timeouts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["create", "SOAP::SOAPInt"],
            ["operate", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Packet_headerType,
          :schema_name => XSD::QName.new(NsVzaenvm_0, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Envm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType,
          :schema_name => XSD::QName.new(NsVzaenvm, "vzaenvm"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", ["Virtuozzo::SOAP::Types::Envm::Create[]", XSD::QName.new(NsEnvm, "create")]],
              ["repair", ["Virtuozzo::SOAP::Types::Envm::Repair[]", XSD::QName.new(NsEnvm, "repair")]],
              ["stop_repair", ["Virtuozzo::SOAP::Types::Envm::Stop_repair[]", XSD::QName.new(NsEnvm, "stop_repair")]],
              ["start", ["Virtuozzo::SOAP::Types::Envm::Start[]", XSD::QName.new(NsEnvm, "start")]],
              ["stop", ["Virtuozzo::SOAP::Types::Envm::Stop[]", XSD::QName.new(NsEnvm, "stop")]],
              ["restart", ["Virtuozzo::SOAP::Types::Envm::Restart[]", XSD::QName.new(NsEnvm, "restart")]],
              ["destroy", ["Virtuozzo::SOAP::Types::Envm::Destroy[]", XSD::QName.new(NsEnvm, "destroy")]],
              ["suspend", ["Virtuozzo::SOAP::Types::Envm::Suspend[]", XSD::QName.new(NsEnvm, "suspend")]],
              ["resume", ["Virtuozzo::SOAP::Types::Envm::Resume[]", XSD::QName.new(NsEnvm, "resume")]],
              ["get_info", ["Virtuozzo::SOAP::Types::Envm::Get_info[]", XSD::QName.new(NsEnvm, "get_info")]],
              ["get_list", ["Virtuozzo::SOAP::Types::Envm::Get_list[]", XSD::QName.new(NsEnvm, "get_list")]],
              ["set", ["Virtuozzo::SOAP::Types::Envm::Set[]", XSD::QName.new(NsEnvm, "set")]],
              ["put_private", ["Virtuozzo::SOAP::Types::Envm::Put_private[]", XSD::QName.new(NsEnvm, "put_private")]],
              ["get_private", ["Virtuozzo::SOAP::Types::Envm::Get_private[]", XSD::QName.new(NsEnvm, "get_private")]],
              ["get_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]", XSD::QName.new(NsEnvm, "get_vt_settings")]],
              ["set_vt_settings", ["Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]", XSD::QName.new(NsEnvm, "set_vt_settings")]],
              ["get_vt_info", ["Virtuozzo::SOAP::Types::Envm::Get_vt_info[]", XSD::QName.new(NsEnvm, "get_vt_info")]],
              ["get_log", ["Virtuozzo::SOAP::Types::Envm::Get_log[]", XSD::QName.new(NsEnvm, "get_log")]],
              ["get_native_config", ["Virtuozzo::SOAP::Types::Envm::Get_native_config[]", XSD::QName.new(NsEnvm, "get_native_config")]],
              ["get_virtual_config", ["Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]", XSD::QName.new(NsEnvm, "get_virtual_config")]]
            ],
            [
              ["env", ["Virtuozzo::SOAP::Types::Envm::EnvType[]", XSD::QName.new(NsEnvm, "env")], [0, nil]],
              ["eid", ["[]", XSD::QName.new(NsEnvm, "eid")], [0, nil]],
              ["value", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "value")]],
              ["vt_settings", ["Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", XSD::QName.new(NsEnvm, "vt_settings")], [0, 1]],
              ["vt_info", ["Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", XSD::QName.new(NsEnvm, "vt_info")], [0, 1]],
              ["env_config", ["Virtuozzo::SOAP::Types::Envm::Env_configType[]", XSD::QName.new(NsEnvm, "env_config")], [0, 1]],
              ["virtual_config", ["Virtuozzo::SOAP::Types::Envm::Venv_configType[]", XSD::QName.new(NsEnvm, "virtual_config")], [0, nil]],
              ["native_config", ["Virtuozzo::SOAP::Types::Envm::Native_configType[]", XSD::QName.new(NsEnvm, "native_config")], [0, nil]],
              ["log", ["SOAP::SOAPBase64[]", XSD::QName.new(NsEnvm, "log")], [0, 1]]
            ],
            [
              ["mount", "Virtuozzo::SOAP::Types::Envm::Mount[]"],
              ["umount", "Virtuozzo::SOAP::Types::Envm::Umount[]"],
              ["set_user_password", "Virtuozzo::SOAP::Types::Envm::Set_user_password[]"],
              ["upgrade", "Virtuozzo::SOAP::Types::Envm::Upgrade[]"],
              ["determine_env", "Virtuozzo::SOAP::Types::Envm::Determine_env[]"],
              ["set_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Set_ugid_quota[]"],
              ["get_ugid_quota", "Virtuozzo::SOAP::Types::Envm::Get_ugid_quota[]"],
              ["get_split_conf", "Virtuozzo::SOAP::Types::Envm::Get_split_conf[]"],
              ["validate", "Virtuozzo::SOAP::Types::Envm::Validate[]"],
              ["get_script", "Virtuozzo::SOAP::Types::Envm::Get_script[]"],
              ["set_script", "Virtuozzo::SOAP::Types::Envm::Set_script[]"],
              ["del_script", "Virtuozzo::SOAP::Types::Envm::Del_script[]"],
              ["recover_template", "Virtuozzo::SOAP::Types::Envm::Recover_template[]"]
            ],
            [ :choice,
              ["veid", nil],
              ["ugid_quota", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info"],
              ["config", "Virtuozzo::SOAP::Types::Envm::Venv_configType_"],
              ["validation", "Virtuozzo::SOAP::Types::Envm::ValidationType[]", [0, nil]],
              ["script", "Virtuozzo::SOAP::Types::Envm::Script"]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::VzaenvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Mount,
          :schema_name => XSD::QName.new(NsVzaenvm, "mount"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Umount,
          :schema_name => XSD::QName.new(NsVzaenvm, "umount"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Suspend_,
          :schema_name => XSD::QName.new(NsVzaenvm, "suspend"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Resume_,
          :schema_name => XSD::QName.new(NsVzaenvm, "resume"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Upgrade,
          :schema_name => XSD::QName.new(NsVzaenvm, "upgrade"),
          :schema_element => [
            ["eid", nil],
            [
              ["options", "Virtuozzo::SOAP::Types::Envm::Upgrade::Options", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Upgrade::Options,
          :schema_name => XSD::QName.new(NsVzaenvm, "options"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["force", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_user_password,
          :schema_name => XSD::QName.new(NsVzaenvm, "set_user_password"),
          :schema_element => [
            ["eid", nil],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Determine_env,
          :schema_name => XSD::QName.new(NsVzaenvm, "determine_env"),
          :schema_element => [
            ["link", "Virtuozzo::SOAP::Types::Envm::Determine_env::Link"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Determine_env::Link,
          :schema_name => XSD::QName.new(NsVzaenvm, "link"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil],
            ["port", "SOAP::SOAPInt", [0, 1]],
            ["client_ip", nil, [0, 1]],
            ["client_port", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_ugid_quota,
          :schema_name => XSD::QName.new(NsVzaenvm, "set_ugid_quota"),
          :schema_element => [
            ["eid", nil],
            ["ugid_quota", "Virtuozzo::SOAP::Types::Envm::Ugid_quota_info"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_ugid_quota,
          :schema_name => XSD::QName.new(NsVzaenvm, "get_ugid_quota"),
          :schema_element => [
            ["eid", nil],
            ["id", "SOAP::SOAPInt[]", [0, nil]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_split_conf,
          :schema_name => XSD::QName.new(NsVzaenvm, "get_split_conf"),
          :schema_element => [
            ["number", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ValidationType,
          :schema_name => XSD::QName.new(NsVzaenvm, "validation"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["warning", "SOAP::SOAPString"],
            ["formula", "SOAP::SOAPString"],
            ["qosID", "SOAP::SOAPString[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Validate,
          :schema_name => XSD::QName.new(NsVzaenvm, "validate"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Envm::Venv_configType_"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Allocate_veidResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "allocate_veidResponse"),
          :schema_element => [
            ["veid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::MountResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "mountResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UmountResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "umountResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::SuspendResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "suspendResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::ResumeResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "resumeResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_user_passwordResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "set_user_passwordResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::UpgradeResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "upgradeResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Determine_envResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "determine_envResponse"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_split_confResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "get_split_confResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_,
          :schema_name => XSD::QName.new(NsVzaenvm, "config"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "name")], [0, 1]],
            ["description", ["SOAP::SOAPBase64", XSD::QName.new(NsTypes, "description")], [0, 1]],
            ["domain", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "domain")], [0, 1]],
            ["hostname", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "hostname")], [0, 1]],
            ["address", ["Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", XSD::QName.new(NsTypes, "address")], [0, nil]],
            ["architecture", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "architecture")], [0, 1]],
            ["os", ["Virtuozzo::SOAP::Types::Envm::OsType", XSD::QName.new(NsTypes, "os")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(NsTypes, "type")], [0, 1]],
            ["nameserver", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "nameserver")], [0, nil]],
            ["search_domain", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "search_domain")], [0, nil]],
            ["base_sample_id", [nil, XSD::QName.new(NsTypes, "base_sample_id")], [0, 1]],
            ["base_snapshot_id", [nil, XSD::QName.new(NsTypes, "base_snapshot_id")], [0, 1]],
            ["child_type", ["SOAP::SOAPString[]", XSD::QName.new(NsTypes, "child_type")], [0, nil]],
            ["qos", ["Virtuozzo::SOAP::Types::Envm::QosType[]", XSD::QName.new(NsTypes, "qos")], [0, nil]],
            ["veid", nil, [0, 1]],
            ["ve_root", "SOAP::SOAPString", [0, 1]],
            ["ve_private", "SOAP::SOAPString", [0, 1]],
            ["on_boot", "SOAP::SOAPBoolean", [0, 1]],
            ["template", "Virtuozzo::SOAP::Types::Envm::TemplateType[]", [0, nil]],
            ["disabled", "SOAP::SOAPBoolean", [0, 1]],
            ["offline_management", "SOAP::SOAPBoolean", [0, 1]],
            ["os_template", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["distribution", "Virtuozzo::SOAP::Types::Envm::TemplateType", [0, 1]],
            ["capability", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability[]", [0, nil]],
            ["iptables", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]],
            ["class_id", "SOAP::SOAPString", [0, 1]],
            ["ve_type", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type", [0, 1]],
            ["offline_service", "SOAP::SOAPString[]", [0, nil]],
            ["wins_server", "SOAP::SOAPString[]", [0, nil]],
            ["net_device", "Virtuozzo::SOAP::Types::Envm::Net_vethType[]", [0, nil]],
            ["ts_license_server", "SOAP::SOAPString[]", [0, nil]],
            ["ts_mode", "SOAP::SOAPInt", [0, 1]],
            ["uuid", "SOAP::SOAPString", [0, 1]],
            ["allow_reboot", "SOAP::SOAPBoolean", [0, 1]],
            ["rate_bound", "SOAP::SOAPBoolean", [0, 1]],
            ["interface_rate", "Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate[]", [0, nil]],
            ["slm_mode", "SOAP::SOAPString", [0, 1]],
            ["origin_sample", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Capability,
          :schema_name => XSD::QName.new(NsVzatypes, "capability"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBoolean"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Ve_type,
          :schema_name => XSD::QName.new(NsVzatypes, "ve_type"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["veid", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType_::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Script,
          :schema_name => XSD::QName.new(NsVzaenvm, "script"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["type", "SOAP::SOAPString"],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["body", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_script,
          :schema_name => XSD::QName.new(NsVzaenvm, "get_script"),
          :schema_element => [
            ["eid", nil],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_scriptResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "get_scriptResponse"),
          :schema_element => [
            ["script", "Virtuozzo::SOAP::Types::Envm::Script[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_script,
          :schema_name => XSD::QName.new(NsVzaenvm, "set_script"),
          :schema_element => [
            ["eid", nil],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["body", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_scriptResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "set_scriptResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Del_script,
          :schema_name => XSD::QName.new(NsVzaenvm, "del_script"),
          :schema_element => [
            ["eid", nil],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Del_scriptResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "del_scriptResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Recover_template,
          :schema_name => XSD::QName.new(NsVzaenvm, "recover_template"),
          :schema_element => [
            ["eid", nil],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["clean", nil, [0, 1]],
            ["skipbackup", nil, [0, 1]],
            ["script", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Recover_templateResponse,
          :schema_name => XSD::QName.new(NsVzaenvm, "recover_templateResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Event_dataType,
          :schema_name => XSD::QName.new(NsTypes, "event_data"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Envm::Packet,
          :schema_name => XSD::QName.new(NsProtocol, "packet"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Envm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]],
            ["data", "Virtuozzo::SOAP::Types::Envm::Packet::C_Data"]
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
          :class => Virtuozzo::SOAP::Types::Envm::Packet::C_Data,
          :schema_name => XSD::QName.new(NsProtocol, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Envm::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Packet_headerType,
          :schema_name => XSD::QName.new(NsProtocol, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Envm::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Envm::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Envm::OperatorType,
          :schema_name => XSD::QName.new(NsProtocol, "operator"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_periodic"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Envm::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Envm::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Envm::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_functional"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Envm::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Interface_rate,
          :schema_name => XSD::QName.new(NsVzatypes, "interface_rate"),
          :schema_element => [
            ["class_id", "SOAP::SOAPString"],
            ["net_device_id", "SOAP::SOAPString"],
            ["rate", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType,
          :schema_name => XSD::QName.new(NsEnvm, "envm"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Envm::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Envm::EnvmType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["create", "Virtuozzo::SOAP::Types::Envm::Create[]"],
              ["repair", "Virtuozzo::SOAP::Types::Envm::Repair[]"],
              ["stop_repair", "Virtuozzo::SOAP::Types::Envm::Stop_repair[]"],
              ["start", "Virtuozzo::SOAP::Types::Envm::Start[]"],
              ["stop", "Virtuozzo::SOAP::Types::Envm::Stop[]"],
              ["restart", "Virtuozzo::SOAP::Types::Envm::Restart[]"],
              ["destroy", "Virtuozzo::SOAP::Types::Envm::Destroy[]"],
              ["suspend", "Virtuozzo::SOAP::Types::Envm::Suspend[]"],
              ["resume", "Virtuozzo::SOAP::Types::Envm::Resume[]"],
              ["get_info", "Virtuozzo::SOAP::Types::Envm::Get_info[]"],
              ["get_list", "Virtuozzo::SOAP::Types::Envm::Get_list[]"],
              ["set", "Virtuozzo::SOAP::Types::Envm::Set[]"],
              ["put_private", "Virtuozzo::SOAP::Types::Envm::Put_private[]"],
              ["get_private", "Virtuozzo::SOAP::Types::Envm::Get_private[]"],
              ["get_vt_settings", "Virtuozzo::SOAP::Types::Envm::Get_vt_settings[]"],
              ["set_vt_settings", "Virtuozzo::SOAP::Types::Envm::Set_vt_settings[]"],
              ["get_vt_info", "Virtuozzo::SOAP::Types::Envm::Get_vt_info[]"],
              ["get_log", "Virtuozzo::SOAP::Types::Envm::Get_log[]"],
              ["get_native_config", "Virtuozzo::SOAP::Types::Envm::Get_native_config[]"],
              ["get_virtual_config", "Virtuozzo::SOAP::Types::Envm::Get_virtual_config[]"]
            ],
            [
              ["env", "Virtuozzo::SOAP::Types::Envm::EnvType[]", [0, nil]],
              ["eid", "[]", [0, nil]],
              ["value", "SOAP::SOAPBase64[]"],
              ["vt_settings", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType[]", [0, 1]],
              ["vt_info", "Virtuozzo::SOAP::Types::Envm::Vt_infoType[]", [0, 1]],
              ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType[]", [0, 1]],
              ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType[]", [0, nil]],
              ["native_config", "Virtuozzo::SOAP::Types::Envm::Native_configType[]", [0, nil]],
              ["log", "SOAP::SOAPBase64[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvmType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Create,
          :schema_name => XSD::QName.new(NsEnvm, "create"),
          :schema_element => [
            ["force", nil, [0, 1]],
            [
              ["config", "Virtuozzo::SOAP::Types::Envm::Env_configType"],
              ["default", "Virtuozzo::SOAP::Types::Envm::Create::Default", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Create::Default,
          :schema_name => XSD::QName.new(NsEnvm, "default"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["parameter", "SOAP::SOAPString[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Repair,
          :schema_name => XSD::QName.new(NsEnvm, "repair"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Stop_repair,
          :schema_name => XSD::QName.new(NsEnvm, "stop_repair"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Start,
          :schema_name => XSD::QName.new(NsEnvm, "start"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Suspend,
          :schema_name => XSD::QName.new(NsEnvm, "suspend"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Resume,
          :schema_name => XSD::QName.new(NsEnvm, "resume"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Stop,
          :schema_name => XSD::QName.new(NsEnvm, "stop"),
          :schema_element => [
            ["eid", nil],
            ["force", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Restart,
          :schema_name => XSD::QName.new(NsEnvm, "restart"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Destroy,
          :schema_name => XSD::QName.new(NsEnvm, "destroy"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_info,
          :schema_name => XSD::QName.new(NsEnvm, "get_info"),
          :schema_element => [
            ["eid", "[]", [0, nil]],
            ["config", "Virtuozzo::SOAP::Types::Envm::Get_info::Config", [0, 1]],
            ["filter_config", "Virtuozzo::SOAP::Types::Envm::Get_info::Filter_config", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_info::Config,
          :schema_name => XSD::QName.new(NsEnvm, "config"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_info::Filter_config,
          :schema_name => XSD::QName.new(NsEnvm, "filter_config"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_list,
          :schema_name => XSD::QName.new(NsEnvm, "get_list"),
          :schema_element => [
            ["count", "SOAP::SOAPInt", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Envm::Env_statusType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set,
          :schema_name => XSD::QName.new(NsEnvm, "set"),
          :schema_element => [
            ["eid", nil],
            [
              [
                ["config", "Virtuozzo::SOAP::Types::Envm::Env_configType"],
                ["force", "Virtuozzo::SOAP::Types::Envm::Set::Force", [0, 1]],
                ["default", "Virtuozzo::SOAP::Types::Envm::Set::Default", [0, 1]]
              ],
              ["apply_config", "Virtuozzo::SOAP::Types::Envm::Set::Apply_config", [0, 1]]
            ],
            ["set_mode", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set::Force,
          :schema_name => XSD::QName.new(NsEnvm, "force"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set::Default,
          :schema_name => XSD::QName.new(NsEnvm, "default"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["parameter", "SOAP::SOAPString[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set::Apply_config,
          :schema_name => XSD::QName.new(NsEnvm, "apply_config"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sample_conf", nil],
            ["parameter", "SOAP::SOAPString[]", [0, nil]],
            ["category", "SOAP::SOAPString[]", [0, nil]],
            ["config_customized", "SOAP::SOAPBoolean", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Put_private,
          :schema_name => XSD::QName.new(NsEnvm, "put_private"),
          :schema_element => [
            ["eid", nil],
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_private,
          :schema_name => XSD::QName.new(NsEnvm, "get_private"),
          :schema_element => [
            ["eid", nil],
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::EnvType,
          :schema_name => XSD::QName.new(NsEnvm, "env"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Envm::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Envm::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Venv_configType,
          :schema_name => XSD::QName.new(NsEnvm, "virtual_config"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Envm::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Native_configType,
          :schema_name => XSD::QName.new(NsEnvm, "native_config"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_native_config,
          :schema_name => XSD::QName.new(NsEnvm, "get_native_config"),
          :schema_element => [
            ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_virtual_config,
          :schema_name => XSD::QName.new(NsEnvm, "get_virtual_config"),
          :schema_element => [
            ["native_config", "Virtuozzo::SOAP::Types::Envm::Native_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_vt_settings,
          :schema_name => XSD::QName.new(NsEnvm, "get_vt_settings"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_vt_settings,
          :schema_name => XSD::QName.new(NsEnvm, "set_vt_settings"),
          :schema_element => [
            ["vt_settings", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_native_configResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_native_configResponse"),
          :schema_element => [
            ["native_config", "Virtuozzo::SOAP::Types::Envm::Native_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_virtual_configResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_virtual_configResponse"),
          :schema_element => [
            ["virtual_config", "Virtuozzo::SOAP::Types::Envm::Venv_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_log,
          :schema_name => XSD::QName.new(NsEnvm, "get_log"),
          :schema_element => [
            ["start_time", nil, [0, 1]],
            ["end_time", nil, [0, 1]],
            ["records", "SOAP::SOAPInt", [0, 1]],
            ["options", "Virtuozzo::SOAP::Types::Envm::Log_optionsType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_infoType,
          :schema_name => XSD::QName.new(NsEnvm, "vt_info"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Vt_settingsType,
          :schema_name => XSD::QName.new(NsEnvm, "vt_settings"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Env_configType,
          :schema_name => XSD::QName.new(NsEnvm, "env_config"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Envm::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Envm::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::CreateResponse,
          :schema_name => XSD::QName.new(NsEnvm, "createResponse"),
          :schema_element => [
            ["env", "Virtuozzo::SOAP::Types::Envm::EnvType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::RepairResponse,
          :schema_name => XSD::QName.new(NsEnvm, "repairResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Stop_repairResponse,
          :schema_name => XSD::QName.new(NsEnvm, "stop_repairResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::StartResponse,
          :schema_name => XSD::QName.new(NsEnvm, "startResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::StopResponse,
          :schema_name => XSD::QName.new(NsEnvm, "stopResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::RestartResponse,
          :schema_name => XSD::QName.new(NsEnvm, "restartResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::DestroyResponse,
          :schema_name => XSD::QName.new(NsEnvm, "destroyResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_infoResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_infoResponse"),
          :schema_element => [
            ["env", "Virtuozzo::SOAP::Types::Envm::EnvType[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_listResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_listResponse"),
          :schema_element => [
            ["eid", "[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::SetResponse,
          :schema_name => XSD::QName.new(NsEnvm, "setResponse"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Envm::Env_configType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Put_privateResponse,
          :schema_name => XSD::QName.new(NsEnvm, "put_privateResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_privateResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_privateResponse"),
          :schema_element => [
            ["value", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_vt_settingsResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_vt_settingsResponse"),
          :schema_element => [
            ["vt_settings", "Virtuozzo::SOAP::Types::Envm::Vt_settingsType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Set_vt_settingsResponse,
          :schema_name => XSD::QName.new(NsEnvm, "set_vt_settingsResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_vt_infoResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_vt_infoResponse"),
          :schema_element => [
            ["vt_info", "Virtuozzo::SOAP::Types::Envm::Vt_infoType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Envm::Get_logResponse,
          :schema_name => XSD::QName.new(NsEnvm, "get_logResponse"),
          :schema_element => [
            ["log", "SOAP::SOAPBase64"]
          ]
        )
      end

    end
  end
end