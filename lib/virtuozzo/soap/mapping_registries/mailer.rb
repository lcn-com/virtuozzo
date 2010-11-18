require 'virtuozzo/soap/types/mailer'
require 'soap/mapping'

module Virtuozzo
  module SOAP
    module MappingRegistries
      module Mailer
        EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
        LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
        NsMailer = "http://www.swsoft.com/webservices/vzl/4.0.0/mailer"
        NsMailer_0 = "http://www.swsoft.com/webservices/vzl/WSDL/4.0.0/mailer"
        NsProtocol = "http://www.swsoft.com/webservices/vzl/4.0.0/protocol"
        NsTypes = "http://www.swsoft.com/webservices/vzl/4.0.0/types"
        NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType,
          :schema_type => XSD::QName.new(NsMailer, "mailerType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Mailer::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["mail_template_list", "Virtuozzo::SOAP::Types::Mailer::Mail_template_list[]", [0, 1]],
              ["get_mail_template", "Virtuozzo::SOAP::Types::Mailer::Get_mail_template[]", [0, 1]],
              ["set_mail_template", "Virtuozzo::SOAP::Types::Mailer::Set_mail_template[]", [0, 1]],
              ["remove_mail_template", "Virtuozzo::SOAP::Types::Mailer::Remove_mail_template[]", [0, 1]],
              ["set_relay", "Virtuozzo::SOAP::Types::Mailer::Set_relay[]", [0, 1]],
              ["get_relay", "Virtuozzo::SOAP::Types::Mailer::Get_relay[]", [0, 1]],
              ["get_config", "Virtuozzo::SOAP::Types::Mailer::Get_config[]", [0, 1]],
              ["set_config", "Virtuozzo::SOAP::Types::Mailer::Set_config[]", [0, 1]],
              ["post", "Virtuozzo::SOAP::Types::Mailer::Post[]", [0, 1]]
            ],
            [
              ["relay", "[]", [0, 1]],
              ["mail_tempate_list", "Virtuozzo::SOAP::Types::Mailer::Mail_tempate_list[]", [0, 1]],
              ["mail_template", "Virtuozzo::SOAP::Types::Mailer::Mail_template[]", [0, 1]],
              ["config", "Virtuozzo::SOAP::Types::Mailer::Config[]", [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailAccountInfo,
          :schema_type => XSD::QName.new(NsMailer, "mailAccountInfo"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["email", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Mailer::QosType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Mailer::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Mailer::Venv_configType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Mailer::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Mailer::TransferType::Output"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Mailer::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Mailer::System_nodeType::Login", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Mailer::TransferType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Mailer::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Mailer::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Mailer::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Mailer::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Mailer::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Mailer::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Mailer::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Mailer::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Swap", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Mailer::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Mailer::Ip_poolType", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Mailer::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Mailer::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Mailer::Root_credentialType::Objects", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Mailer::CredentialType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Mailer::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Mailer::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Mailer::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Mailer::TokenType::Source", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Mailer::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Mailer::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Mailer::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Mailer::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Mailer::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Mailer::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Mailer::EventType::C_Data", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Mailer::Event_dataType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Mailer::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Mailer::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Mailer::AceType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Net_deviceType::Status", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Mailer::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Mailer::Voc_parameterType[]", [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Mailer::IntervalType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Mailer::Perf_statType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Mailer::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Mailer::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Mailer::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Mailer::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Mailer::OperatorType[]"]
          ]
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        EncodedRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType,
          :schema_type => XSD::QName.new(NsMailer, "mailerType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Mailer::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["mail_template_list", "Virtuozzo::SOAP::Types::Mailer::Mail_template_list[]", [0, 1]],
              ["get_mail_template", "Virtuozzo::SOAP::Types::Mailer::Get_mail_template[]", [0, 1]],
              ["set_mail_template", "Virtuozzo::SOAP::Types::Mailer::Set_mail_template[]", [0, 1]],
              ["remove_mail_template", "Virtuozzo::SOAP::Types::Mailer::Remove_mail_template[]", [0, 1]],
              ["set_relay", "Virtuozzo::SOAP::Types::Mailer::Set_relay[]", [0, 1]],
              ["get_relay", "Virtuozzo::SOAP::Types::Mailer::Get_relay[]", [0, 1]],
              ["get_config", "Virtuozzo::SOAP::Types::Mailer::Get_config[]", [0, 1]],
              ["set_config", "Virtuozzo::SOAP::Types::Mailer::Set_config[]", [0, 1]],
              ["post", "Virtuozzo::SOAP::Types::Mailer::Post[]", [0, 1]]
            ],
            [
              ["relay", "[]", [0, 1]],
              ["mail_tempate_list", "Virtuozzo::SOAP::Types::Mailer::Mail_tempate_list[]", [0, 1]],
              ["mail_template", "Virtuozzo::SOAP::Types::Mailer::Mail_template[]", [0, 1]],
              ["config", "Virtuozzo::SOAP::Types::Mailer::Config[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailAccountInfo,
          :schema_type => XSD::QName.new(NsMailer, "mailAccountInfo"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["email", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::OsType,
          :schema_type => XSD::QName.new(NsTypes, "osType"),
          :schema_element => [
            ["platform", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["version", "SOAP::SOAPString", [0, 1]],
            ["kernel", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_statusType,
          :schema_type => XSD::QName.new(NsTypes, "env_statusType"),
          :schema_element => [
            ["state", "SOAP::SOAPInt", [0, 1]],
            ["transition", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::QosType,
          :schema_type => XSD::QName.new(NsTypes, "qosType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["soft", "SOAP::SOAPLong", [0, 1]],
            ["hard", "SOAP::SOAPLong", [0, 1]],
            ["cur", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_configType,
          :schema_type => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Venv_configType,
          :schema_type => XSD::QName.new(NsTypes, "venv_configType"),
          :schema_basetype => XSD::QName.new(NsTypes, "env_configType"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPString", [0, 1]],
            ["hostname", "SOAP::SOAPString", [0, 1]],
            ["address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["architecture", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["type", "SOAP::SOAPString", [0, 1]],
            ["nameserver", "SOAP::SOAPString[]", [0, nil]],
            ["search_domain", "SOAP::SOAPString[]", [0, nil]],
            ["base_sample_id", nil, [0, 1]],
            ["base_snapshot_id", nil, [0, 1]],
            ["child_type", "SOAP::SOAPString[]", [0, nil]],
            ["qos", "Virtuozzo::SOAP::Types::Mailer::QosType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Native_configType,
          :schema_type => XSD::QName.new(NsTypes, "native_configType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EnvType,
          :schema_type => XSD::QName.new(NsTypes, "envType"),
          :schema_element => [
            ["parent_eid", nil],
            ["eid", nil],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Env_statusType", [0, 1]],
            ["alert", "SOAP::SOAPInt", [0, 1]],
            ["config", "Virtuozzo::SOAP::Types::Mailer::Env_configType", [0, 1]],
            ["virtual_config", "Virtuozzo::SOAP::Types::Mailer::Venv_configType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ProcessesType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avgType,
          :schema_type => XSD::QName.new(NsTypes, "load_avgType"),
          :schema_element => [
            ["l1", "SOAP::SOAPDouble"],
            ["l2", "SOAP::SOAPDouble", [0, 1]],
            ["l3", "SOAP::SOAPDouble", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Cpu_loadType,
          :schema_type => XSD::QName.new(NsTypes, "cpu_loadType"),
          :schema_element => [
            ["system", "SOAP::SOAPLong"],
            ["user", "SOAP::SOAPLong"],
            ["nice", "SOAP::SOAPLong"],
            ["idle", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::CpuType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType,
          :schema_type => XSD::QName.new(NsTypes, "transferType"),
          :schema_element => [
            ["input", "Virtuozzo::SOAP::Types::Mailer::TransferType::Input"],
            ["output", "Virtuozzo::SOAP::Types::Mailer::TransferType::Output"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType::Input,
          :schema_name => XSD::QName.new(NsTypes, "input"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TransferType::Output,
          :schema_name => XSD::QName.new(NsTypes, "output"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["bytes", "SOAP::SOAPLong"],
            ["packets", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType,
          :schema_type => XSD::QName.new(NsTypes, "system_nodeType"),
          :schema_element => [
            ["address", "Virtuozzo::SOAP::Types::Mailer::System_nodeType::Address"],
            ["login", "Virtuozzo::SOAP::Types::Mailer::System_nodeType::Login", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType::Address,
          :schema_name => XSD::QName.new(NsTypes, "address"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::System_nodeType::Login,
          :schema_name => XSD::QName.new(NsTypes, "login"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["user", "SOAP::SOAPString"],
            ["password", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ResourceType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::IntervalType,
          :schema_type => XSD::QName.new(NsTypes, "intervalType"),
          :schema_element => [
            ["start_time", nil],
            ["end_time", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::StatsType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Net_addressType,
          :schema_type => XSD::QName.new(NsTypes, "net_addressType"),
          :schema_element => [
            ["host", nil],
            ["mask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_classType,
          :schema_type => XSD::QName.new(NsTypes, "net_classType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Mailer::TransferType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_rangeType,
          :schema_type => XSD::QName.new(NsTypes, "ip_rangeType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["start_ip", nil, [0, 1]],
            ["subnet_mask", "SOAP::SOAPInt", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sample_confType,
          :schema_type => XSD::QName.new(NsTypes, "sample_confType"),
          :schema_element => [
            ["env_config", "Virtuozzo::SOAP::Types::Mailer::Env_configType"],
            ["id", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString"],
            ["comment", "SOAP::SOAPBase64", [0, 1]],
            ["vt_version", "Virtuozzo::SOAP::Types::Mailer::Sample_confType::Vt_version", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sample_confType::Vt_version,
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
          :class => Virtuozzo::SOAP::Types::Mailer::InterfaceType,
          :schema_type => XSD::QName.new(NsTypes, "interfaceType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["bandwidth", "SOAP::SOAPInt", [0, 1]],
            ["transfer", "Virtuozzo::SOAP::Types::Mailer::TransferType", [0, 1]],
            ["ipaddress", nil, [0, 1]],
            ["flags", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType,
          :schema_type => XSD::QName.new(NsTypes, "sys_infoType"),
          :schema_element => [
            ["load_avg", "Virtuozzo::SOAP::Types::Mailer::Load_avgType"],
            ["processes", "Virtuozzo::SOAP::Types::Mailer::ProcessesType"],
            ["cpu_load", "Virtuozzo::SOAP::Types::Mailer::Cpu_loadType"],
            ["cpu_states", "Virtuozzo::SOAP::Types::Mailer::Cpu_loadType"],
            ["users", "SOAP::SOAPInt"],
            ["uptime", "SOAP::SOAPLong"],
            ["memory", "Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Memory", [0, 1]],
            ["swap", "Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Swap", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Memory,
          :schema_name => XSD::QName.new(NsTypes, "memory"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Sys_infoType::Swap,
          :schema_name => XSD::QName.new(NsTypes, "swap"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ps_infoType,
          :schema_type => XSD::QName.new(NsTypes, "ps_infoType"),
          :schema_element => [
            ["process", "Virtuozzo::SOAP::Types::Mailer::Ps_infoType::C_Process[]", [1, nil]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::Ps_infoType::C_Process,
          :schema_name => XSD::QName.new(NsTypes, "process"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["pid", "SOAP::SOAPInt"],
            ["param", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType,
          :schema_type => XSD::QName.new(NsTypes, "load_avg_statsType"),
          :schema_element => [
            ["l1", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L1"],
            ["l2", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L2", [0, 1]],
            ["l3", "Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L3", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L1,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L2,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Load_avg_statsType::L3,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Alert_dataType,
          :schema_type => XSD::QName.new(NsTypes, "alert_dataType"),
          :schema_basetype => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_addressType,
          :schema_type => XSD::QName.new(NsTypes, "ip_addressType"),
          :schema_element => [
            ["ip", nil],
            ["netmask", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_resourceType,
          :schema_type => XSD::QName.new(NsTypes, "env_resourceType"),
          :schema_element => [
            ["eid", nil],
            ["ip_pool", "Virtuozzo::SOAP::Types::Mailer::Ip_poolType", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_poolType,
          :schema_type => XSD::QName.new(NsTypes, "ip_poolType"),
          :schema_element => [ :choice,
            ["ip_range", "Virtuozzo::SOAP::Types::Mailer::Ip_poolType::Ip_range[]"],
            ["ip", "[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Ip_poolType::Ip_range,
          :schema_name => XSD::QName.new(NsTypes, "ip_range"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["start_ip", nil],
            ["end_ip", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UsageType,
          :schema_type => XSD::QName.new(NsTypes, "usageType"),
          :schema_element => [
            ["total", "SOAP::SOAPLong", [0, 1]],
            ["used", "SOAP::SOAPLong", [0, 1]],
            ["free", "SOAP::SOAPLong", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Root_credentialType,
          :schema_type => XSD::QName.new(NsTypes, "root_credentialType"),
          :schema_basetype => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Mailer::CredentialType[]", [0, nil]],
            ["objects", "Virtuozzo::SOAP::Types::Mailer::Root_credentialType::Objects", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Root_credentialType::Objects,
          :schema_name => XSD::QName.new(NsTypes, "objects"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["eid", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::CredentialType,
          :schema_type => XSD::QName.new(NsTypes, "credentialType"),
          :schema_element => [
            ["id", "SOAP::SOAPString"],
            ["policy", "SOAP::SOAPInt", [0, 1]],
            ["description", "SOAP::SOAPBase64", [0, 1]],
            ["cred", "Virtuozzo::SOAP::Types::Mailer::CredentialType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType,
          :schema_type => XSD::QName.new(NsTypes, "tokenType"),
          :schema_element => [
            ["user", nil],
            ["groups", "Virtuozzo::SOAP::Types::Mailer::TokenType::Groups", [0, 1]],
            ["deny_only_sids", "Virtuozzo::SOAP::Types::Mailer::TokenType::Deny_only_sids", [0, 1]],
            ["privileges", "Virtuozzo::SOAP::Types::Mailer::TokenType::Privileges", [0, 1]],
            ["source", "Virtuozzo::SOAP::Types::Mailer::TokenType::Source", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Groups,
          :schema_name => XSD::QName.new(NsTypes, "groups"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Deny_only_sids,
          :schema_name => XSD::QName.new(NsTypes, "deny_only_sids"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["sid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Privileges,
          :schema_name => XSD::QName.new(NsTypes, "privileges"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["privilege", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::TokenType::Source,
          :schema_name => XSD::QName.new(NsTypes, "source"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["id", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Connectivity_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Auth_nameType,
          :schema_type => XSD::QName.new(NsTypes, "auth_nameType"),
          :schema_element => [
            ["name", "SOAP::SOAPBase64", [0, 1]],
            ["domain", "SOAP::SOAPBase64", [0, 1]],
            ["realm", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Connection_infoType,
          :schema_type => XSD::QName.new(NsTypes, "connection_infoType"),
          :schema_basetype => XSD::QName.new(NsTypes, "connectivity_infoType"),
          :schema_element => [
            ["protocol", "SOAP::SOAPString", [0, 1]],
            ["address", "SOAP::SOAPString"],
            ["port", "SOAP::SOAPUnsignedInt", [0, 1]],
            ["login", "Virtuozzo::SOAP::Types::Mailer::Auth_nameType", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Eid_listType,
          :schema_type => XSD::QName.new(NsTypes, "eid_listType"),
          :schema_element => [
            ["eid", "[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Vt_infoType,
          :schema_type => XSD::QName.new(NsTypes, "vt_infoType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Vt_settingsType,
          :schema_type => XSD::QName.new(NsTypes, "vt_settingsType"),
          :schema_element => [
            ["default_sample_id", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType,
          :schema_type => XSD::QName.new(NsTypes, "userType"),
          :schema_element => [
            ["initial_group", "Virtuozzo::SOAP::Types::Mailer::UserType::Initial_group", [0, 1]],
            ["group", "Virtuozzo::SOAP::Types::Mailer::UserType::Group[]", [0, nil]],
            ["uid", "SOAP::SOAPInt", [0, 1]],
            ["shell", "SOAP::SOAPString", [0, 1]],
            ["password", "SOAP::SOAPBase64", [0, 1]],
            ["home_dir", "SOAP::SOAPString", [0, 1]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["comment", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType::Initial_group,
          :schema_name => XSD::QName.new(NsTypes, "initial_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::UserType::Group,
          :schema_name => XSD::QName.new(NsTypes, "group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType,
          :schema_type => XSD::QName.new(NsTypes, "groupType"),
          :schema_element => [
            ["user", "Virtuozzo::SOAP::Types::Mailer::GroupType::User[]", [0, nil]],
            ["member_group", "Virtuozzo::SOAP::Types::Mailer::GroupType::Member_group[]", [0, nil]],
            ["name", "SOAP::SOAPString", [0, 1]],
            ["gid", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType::User,
          :schema_name => XSD::QName.new(NsTypes, "user"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::GroupType::Member_group,
          :schema_name => XSD::QName.new(NsTypes, "member_group"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::PackageType,
          :schema_type => XSD::QName.new(NsTypes, "packageType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["summary", "SOAP::SOAPString", [0, 1]],
            ["os", "Virtuozzo::SOAP::Types::Mailer::OsType", [0, 1]],
            ["description", "SOAP::SOAPString", [0, 1]],
            ["arch", "SOAP::SOAPString", [0, 1]],
            ["version", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Event_dataType,
          :schema_type => XSD::QName.new(NsTypes, "event_dataType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Named_listType,
          :schema_type => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ModType,
          :schema_type => XSD::QName.new(NsTypes, "modType"),
          :schema_basetype => XSD::QName.new(NsTypes, "named_listType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "SOAP::SOAPBase64[]", [0, nil]],
            ["op", "SOAP::SOAPInt", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::RealmType,
          :schema_type => XSD::QName.new(NsTypes, "realmType"),
          :schema_element => [
            ["id", nil, [0, 1]],
            ["type", "SOAP::SOAPInt"],
            ["name", "SOAP::SOAPString"],
            ["builtin", nil, [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EventType,
          :schema_type => XSD::QName.new(NsTypes, "eventType"),
          :schema_element => [
            ["eid", nil],
            ["time", nil],
            ["source", "SOAP::SOAPString"],
            ["category", "SOAP::SOAPString"],
            ["sid", nil, [0, 1]],
            ["count", "SOAP::SOAPInt"],
            ["id", nil],
            ["info", "Virtuozzo::SOAP::Types::Mailer::InfoType"],
            ["data", "Virtuozzo::SOAP::Types::Mailer::EventType::C_Data", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::EventType::C_Data,
          :schema_name => XSD::QName.new(NsTypes, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["event_data", "Virtuozzo::SOAP::Types::Mailer::Event_dataType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::InfoType,
          :schema_type => XSD::QName.new(NsTypes, "infoType"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"],
            ["translate", nil, [0, 1]],
            ["parameter", "Virtuozzo::SOAP::Types::Mailer::InfoType[]", [0, nil]],
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::AceType,
          :schema_type => XSD::QName.new(NsTypes, "aceType"),
          :schema_element => [
            ["type", "SOAP::SOAPInt"],
            ["sid", nil],
            ["rights", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Security_descriptorType,
          :schema_type => XSD::QName.new(NsTypes, "security_descriptorType"),
          :schema_element => [
            ["owner", nil],
            ["group", nil],
            ["dacl", "Virtuozzo::SOAP::Types::Mailer::Security_descriptorType::Dacl", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Security_descriptorType::Dacl,
          :schema_name => XSD::QName.new(NsTypes, "dacl"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["ace", "Virtuozzo::SOAP::Types::Mailer::AceType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Env_security_objectType,
          :schema_type => XSD::QName.new(NsTypes, "env_security_objectType"),
          :schema_basetype => XSD::QName.new(NsTypes, "security_objectType"),
          :schema_element => [
            ["eid", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_deviceType,
          :schema_type => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Net_deviceType::Status", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_deviceType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::VocabularyType,
          :schema_type => XSD::QName.new(NsTypes, "vocabularyType"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["parameter", "Virtuozzo::SOAP::Types::Mailer::Voc_parameterType[]", [0, nil]],
            ["category", "Virtuozzo::SOAP::Types::Mailer::Voc_parameterType[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_nicType,
          :schema_type => XSD::QName.new(NsTypes, "net_nicType"),
          :schema_basetype => XSD::QName.new(NsTypes, "net_deviceType"),
          :schema_element => [
            ["id", "SOAP::SOAPString", [0, 1]],
            ["ip_address", "Virtuozzo::SOAP::Types::Mailer::Ip_addressType[]", [0, nil]],
            ["dhcp", nil, [0, 1]],
            ["network_id", "SOAP::SOAPBase64", [0, 1]],
            ["status", "Virtuozzo::SOAP::Types::Mailer::Net_nicType::Status", [0, 1]],
            ["mac_address", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Net_nicType::Status,
          :schema_name => XSD::QName.new(NsTypes, "status"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [ :choice,
            ["up", nil],
            ["down", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_statType,
          :schema_type => XSD::QName.new(NsTypes, "perf_statType"),
          :schema_element => [
            ["cur", "SOAP::SOAPAnySimpleType"],
            ["avg", "SOAP::SOAPAnySimpleType"],
            ["max", "SOAP::SOAPAnySimpleType"],
            ["min", "SOAP::SOAPAnySimpleType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType,
          :schema_type => XSD::QName.new(NsTypes, "perf_dataType"),
          :schema_element => [
            ["eid", nil],
            ["v_class", ["Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class[]", XSD::QName.new(NsTypes, "class")], [0, nil]],
            ["interval", "Virtuozzo::SOAP::Types::Mailer::IntervalType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance::Counter,
          :schema_name => XSD::QName.new(NsTypes, "counter"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["value", "Virtuozzo::SOAP::Types::Mailer::Perf_statType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance,
          :schema_name => XSD::QName.new(NsTypes, "instance"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]],
            ["counter", "Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance::Counter[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class,
          :schema_name => XSD::QName.new(NsTypes, "class"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["instance", "Virtuozzo::SOAP::Types::Mailer::Perf_dataType::C_Class::Instance[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Log_options_baseType,
          :schema_type => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Log_optionsType,
          :schema_type => XSD::QName.new(NsTypes, "log_optionsType"),
          :schema_basetype => XSD::QName.new(NsTypes, "log_options_baseType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Packet_headerType,
          :schema_type => XSD::QName.new(NsProtocol, "packet_headerType"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Mailer::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::OperatorType,
          :schema_type => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operatorType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType,
          :schema_type => XSD::QName.new(NsProtocol, "operator_periodicType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "operator_functionalType"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Mailer::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Mailer::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Mailer::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_periodType,
          :schema_type => XSD::QName.new(NsProtocol, "set_periodType"),
          :schema_element => [
            ["collect", "SOAP::SOAPInt"],
            ["log", "SOAP::SOAPInt"],
            ["report", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Start_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "start_monitorType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"],
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Stop_monitorType,
          :schema_type => XSD::QName.new(NsProtocol, "stop_monitorType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::AuthType,
          :schema_type => XSD::QName.new(NsProtocol, "authType"),
          :schema_element => [
            ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Event_configurationType,
          :schema_type => XSD::QName.new(NsProtocol, "event_configurationType"),
          :schema_basetype => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => [
            ["period", "SOAP::SOAPInt"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Periodic_configurationType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::RouteType,
          :schema_type => XSD::QName.new(NsProtocol, "routeType"),
          :schema_element => [
            ["director", "SOAP::SOAPString", [0, 1]],
            ["host", "SOAP::SOAPString", [0, 1]],
            ["index", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::DataType,
          :schema_type => XSD::QName.new(NsProtocol, "dataType"),
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Mailer::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::ConfigurationType,
          :schema_type => XSD::QName.new(NsProtocol, "configurationType"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Transport_type,
          :schema_type => XSD::QName.new(NsTypes, "transport_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Yes_no_type,
          :schema_type => XSD::QName.new(NsTypes, "yes_no_type")
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Packet_headerType,
          :schema_name => XSD::QName.new(NsMailer_0, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Mailer::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType,
          :schema_name => XSD::QName.new(NsMailer, "mailer"),
          :schema_element => [ :choice,
            ["configuration", ["Virtuozzo::SOAP::Types::Mailer::ConfigurationType", XSD::QName.new(NsProtocol, "configuration")]],
            ["ok", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Ok[]", XSD::QName.new(NsProtocol, "ok")]],
            ["error", ["Virtuozzo::SOAP::Types::Mailer::MailerType::Error[]", XSD::QName.new(NsProtocol, "error")]],
            [
              ["mail_template_list", "Virtuozzo::SOAP::Types::Mailer::Mail_template_list[]", [0, 1]],
              ["get_mail_template", "Virtuozzo::SOAP::Types::Mailer::Get_mail_template[]", [0, 1]],
              ["set_mail_template", "Virtuozzo::SOAP::Types::Mailer::Set_mail_template[]", [0, 1]],
              ["remove_mail_template", "Virtuozzo::SOAP::Types::Mailer::Remove_mail_template[]", [0, 1]],
              ["set_relay", "Virtuozzo::SOAP::Types::Mailer::Set_relay[]", [0, 1]],
              ["get_relay", "Virtuozzo::SOAP::Types::Mailer::Get_relay[]", [0, 1]],
              ["get_config", "Virtuozzo::SOAP::Types::Mailer::Get_config[]", [0, 1]],
              ["set_config", "Virtuozzo::SOAP::Types::Mailer::Set_config[]", [0, 1]],
              ["post", "Virtuozzo::SOAP::Types::Mailer::Post[]", [0, 1]]
            ],
            [
              ["relay", "[]", [0, 1]],
              ["mail_tempate_list", "Virtuozzo::SOAP::Types::Mailer::Mail_tempate_list[]", [0, 1]],
              ["mail_template", "Virtuozzo::SOAP::Types::Mailer::Mail_template[]", [0, 1]],
              ["config", "Virtuozzo::SOAP::Types::Mailer::Config[]", [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::MailerType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Get_mail_template,
          :schema_name => XSD::QName.new(NsMailer, "get_mail_template"),
          :schema_element => [
            ["name", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_mail_template,
          :schema_name => XSD::QName.new(NsMailer, "set_mail_template"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["body", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Remove_mail_template,
          :schema_name => XSD::QName.new(NsMailer, "remove_mail_template"),
          :schema_element => [
            ["name", "SOAP::SOAPString"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_relay,
          :schema_name => XSD::QName.new(NsMailer, "set_relay"),
          :schema_element => [
            ["relay", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Get_relay,
          :schema_name => XSD::QName.new(NsMailer, "get_relay"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_config,
          :schema_name => XSD::QName.new(NsMailer, "set_config"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Mailer::Config"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Config,
          :schema_name => XSD::QName.new(NsMailer, "config"),
          :schema_element => [
            ["notify", nil],
            ["accounts", "Virtuozzo::SOAP::Types::Mailer::Config::Accounts", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Config::Accounts,
          :schema_name => XSD::QName.new(NsMailer, "accounts"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["admin", "Virtuozzo::SOAP::Types::Mailer::MailAccountInfo", [0, 1]],
            ["system", "Virtuozzo::SOAP::Types::Mailer::MailAccountInfo", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Post,
          :schema_name => XSD::QName.new(NsMailer, "post"),
          :schema_element => [
            ["message", "SOAP::SOAPBase64"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Mail_tempate_list,
          :schema_name => XSD::QName.new(NsMailer, "mail_tempate_list"),
          :schema_element => [
            ["name", "SOAP::SOAPString[]", [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Mail_template,
          :schema_name => XSD::QName.new(NsMailer, "mail_template"),
          :schema_element => [
            ["name", "SOAP::SOAPString"],
            ["body", "SOAP::SOAPBase64"],
            ["read_only", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Mail_template_listResponse,
          :schema_name => XSD::QName.new(NsMailer, "mail_template_listResponse"),
          :schema_element => [
            ["mail_tempate_list", "Virtuozzo::SOAP::Types::Mailer::Mail_tempate_list"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Get_mail_templateResponse,
          :schema_name => XSD::QName.new(NsMailer, "get_mail_templateResponse"),
          :schema_element => [
            ["mail_template", "Virtuozzo::SOAP::Types::Mailer::Mail_template[]", [1, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_mail_templateResponse,
          :schema_name => XSD::QName.new(NsMailer, "set_mail_templateResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Remove_mail_templateResponse,
          :schema_name => XSD::QName.new(NsMailer, "remove_mail_templateResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_relayResponse,
          :schema_name => XSD::QName.new(NsMailer, "set_relayResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Get_relayResponse,
          :schema_name => XSD::QName.new(NsMailer, "get_relayResponse"),
          :schema_element => [
            ["relay", nil]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Set_configResponse,
          :schema_name => XSD::QName.new(NsMailer, "set_configResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Get_configResponse,
          :schema_name => XSD::QName.new(NsMailer, "get_configResponse"),
          :schema_element => [
            ["config", "Virtuozzo::SOAP::Types::Mailer::Config"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::PostResponse,
          :schema_name => XSD::QName.new(NsMailer, "postResponse"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Event_dataType,
          :schema_name => XSD::QName.new(NsTypes, "event_data"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Voc_parameterType,
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
          :class => Virtuozzo::SOAP::Types::Mailer::Packet,
          :schema_name => XSD::QName.new(NsProtocol, "packet"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Mailer::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["session", "SOAP::SOAPString", [0, 1]],
            ["data", "Virtuozzo::SOAP::Types::Mailer::Packet::C_Data"]
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
          :class => Virtuozzo::SOAP::Types::Mailer::Packet::C_Data,
          :schema_name => XSD::QName.new(NsProtocol, "data"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["operator", "Virtuozzo::SOAP::Types::Mailer::OperatorType[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Packet_headerType,
          :schema_name => XSD::QName.new(NsProtocol, "packet_header"),
          :schema_element => [
            ["auth", "Virtuozzo::SOAP::Types::Mailer::AuthType", [0, 1]],
            ["cookie", "SOAP::SOAPString", [0, 1]],
            ["target", "SOAP::SOAPString[]", [0, nil]],
            ["origin", "SOAP::SOAPString", [0, 1]],
            ["src", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
            ["dst", "Virtuozzo::SOAP::Types::Mailer::RouteType", [0, 1]],
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
          :class => Virtuozzo::SOAP::Types::Mailer::OperatorType,
          :schema_name => XSD::QName.new(NsProtocol, "operator"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_periodic"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error[]"],
            [ :choice,
              ["start_monitor", "Virtuozzo::SOAP::Types::Mailer::Start_monitorType"],
              ["stop_monitor", "Virtuozzo::SOAP::Types::Mailer::Stop_monitorType"],
              ["set_period", "Virtuozzo::SOAP::Types::Mailer::Set_periodType", [0, 1]],
              ["report", nil, [0, 1]]
            ]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_periodicType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType,
          :schema_name => XSD::QName.new(NsProtocol, "operator_functional"),
          :schema_element => [ :choice,
            ["configuration", "Virtuozzo::SOAP::Types::Mailer::ConfigurationType"],
            ["ok", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok[]"],
            ["error", "Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error[]"]
          ]
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Ok,
          :schema_name => XSD::QName.new(NsProtocol, "ok"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => Virtuozzo::SOAP::Types::Mailer::Operator_functionalType::Error,
          :schema_name => XSD::QName.new(NsProtocol, "error"),
          :is_anonymous => true,
          :schema_qualified => true,
          :schema_element => [
            ["code", "SOAP::SOAPInt"],
            ["message", "SOAP::SOAPString", [0, 1]]
          ]
        )
      end

    end
  end
end