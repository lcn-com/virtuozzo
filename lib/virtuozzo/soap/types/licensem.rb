require 'xsd/qname'

module Virtuozzo
  module SOAP
    module Types
      module Licensem

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}parameterType
      #   name - SOAP::SOAPString
      #   value - SOAP::SOAPBase64
      #   used - SOAP::SOAPBase64
      class ParameterType
        attr_accessor :name
        attr_accessor :value
        attr_accessor :used

        def initialize(name = nil, value = nil, used = nil)
          @name = name
          @value = value
          @used = used
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}licenseType
      class LicenseType < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}licensesType
      #   body - SOAP::SOAPString
      #   license - Virtuozzo::SOAP::Types::Licensem::LicenseType
      class LicensesType
        attr_accessor :body
        attr_accessor :license

        def initialize(body = nil, license = [])
          @body = body
          @license = license
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}osType
      #   platform - SOAP::SOAPString
      #   name - SOAP::SOAPString
      #   version - SOAP::SOAPString
      #   kernel - SOAP::SOAPString
      class OsType
        attr_accessor :platform
        attr_accessor :name
        attr_accessor :version
        attr_accessor :kernel

        def initialize(platform = nil, name = nil, version = nil, kernel = nil)
          @platform = platform
          @name = name
          @version = version
          @kernel = kernel
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}env_statusType
      #   state - SOAP::SOAPInt
      #   transition - SOAP::SOAPInt
      class Env_statusType
        attr_accessor :state
        attr_accessor :transition

        def initialize(state = nil, transition = nil)
          @state = state
          @transition = transition
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}qosType
      #   id - SOAP::SOAPString
      #   soft - SOAP::SOAPLong
      #   hard - SOAP::SOAPLong
      #   cur - SOAP::SOAPLong
      class QosType
        attr_accessor :id
        attr_accessor :soft
        attr_accessor :hard
        attr_accessor :cur

        def initialize(id = nil, soft = nil, hard = nil, cur = nil)
          @id = id
          @soft = soft
          @hard = hard
          @cur = cur
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}env_configType
      #   name - SOAP::SOAPString
      #   description - SOAP::SOAPBase64
      #   domain - SOAP::SOAPString
      #   hostname - SOAP::SOAPString
      #   address - Virtuozzo::SOAP::Types::Licensem::Ip_addressType
      #   architecture - SOAP::SOAPString
      #   os - Virtuozzo::SOAP::Types::Licensem::OsType
      #   type - SOAP::SOAPString
      #   nameserver - SOAP::SOAPString
      #   search_domain - SOAP::SOAPString
      #   base_sample_id - (any)
      #   base_snapshot_id - (any)
      #   child_type - SOAP::SOAPString
      class Env_configType
        attr_accessor :name
        attr_accessor :description
        attr_accessor :domain
        attr_accessor :hostname
        attr_accessor :address
        attr_accessor :architecture
        attr_accessor :os
        attr_accessor :type
        attr_accessor :nameserver
        attr_accessor :search_domain
        attr_accessor :base_sample_id
        attr_accessor :base_snapshot_id
        attr_accessor :child_type

        def initialize(name = nil, description = nil, domain = nil, hostname = nil, address = [], architecture = nil, os = nil, type = nil, nameserver = [], search_domain = [], base_sample_id = nil, base_snapshot_id = nil, child_type = [])
          @name = name
          @description = description
          @domain = domain
          @hostname = hostname
          @address = address
          @architecture = architecture
          @os = os
          @type = type
          @nameserver = nameserver
          @search_domain = search_domain
          @base_sample_id = base_sample_id
          @base_snapshot_id = base_snapshot_id
          @child_type = child_type
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}venv_configType
      #   name - SOAP::SOAPString
      #   description - SOAP::SOAPBase64
      #   domain - SOAP::SOAPString
      #   hostname - SOAP::SOAPString
      #   address - Virtuozzo::SOAP::Types::Licensem::Ip_addressType
      #   architecture - SOAP::SOAPString
      #   os - Virtuozzo::SOAP::Types::Licensem::OsType
      #   type - SOAP::SOAPString
      #   nameserver - SOAP::SOAPString
      #   search_domain - SOAP::SOAPString
      #   base_sample_id - (any)
      #   base_snapshot_id - (any)
      #   child_type - SOAP::SOAPString
      #   qos - Virtuozzo::SOAP::Types::Licensem::QosType
      class Venv_configType < Env_configType
        attr_accessor :name
        attr_accessor :description
        attr_accessor :domain
        attr_accessor :hostname
        attr_accessor :address
        attr_accessor :architecture
        attr_accessor :os
        attr_accessor :type
        attr_accessor :nameserver
        attr_accessor :search_domain
        attr_accessor :base_sample_id
        attr_accessor :base_snapshot_id
        attr_accessor :child_type
        attr_accessor :qos

        def initialize(name = nil, description = nil, domain = nil, hostname = nil, address = [], architecture = nil, os = nil, type = nil, nameserver = [], search_domain = [], base_sample_id = nil, base_snapshot_id = nil, child_type = [], qos = [])
          @name = name
          @description = description
          @domain = domain
          @hostname = hostname
          @address = address
          @architecture = architecture
          @os = os
          @type = type
          @nameserver = nameserver
          @search_domain = search_domain
          @base_sample_id = base_sample_id
          @base_snapshot_id = base_snapshot_id
          @child_type = child_type
          @qos = qos
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}native_configType
      class Native_configType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}envType
      #   parent_eid - (any)
      #   eid - (any)
      #   status - Virtuozzo::SOAP::Types::Licensem::Env_statusType
      #   alert - SOAP::SOAPInt
      #   config - Virtuozzo::SOAP::Types::Licensem::Env_configType
      #   virtual_config - Virtuozzo::SOAP::Types::Licensem::Venv_configType
      class EnvType
        attr_accessor :parent_eid
        attr_accessor :eid
        attr_accessor :status
        attr_accessor :alert
        attr_accessor :config
        attr_accessor :virtual_config

        def initialize(parent_eid = nil, eid = nil, status = nil, alert = nil, config = nil, virtual_config = nil)
          @parent_eid = parent_eid
          @eid = eid
          @status = status
          @alert = alert
          @config = config
          @virtual_config = virtual_config
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}processesType
      #   run - SOAP::SOAPInt
      #   zombie - SOAP::SOAPInt
      #   sleep - SOAP::SOAPInt
      #   uninterrupt - SOAP::SOAPInt
      #   stopped - SOAP::SOAPInt
      #   total - SOAP::SOAPInt
      class ProcessesType
        attr_accessor :run
        attr_accessor :zombie
        attr_accessor :sleep
        attr_accessor :uninterrupt
        attr_accessor :stopped
        attr_accessor :total

        def initialize(run = nil, zombie = nil, sleep = nil, uninterrupt = nil, stopped = nil, total = nil)
          @run = run
          @zombie = zombie
          @sleep = sleep
          @uninterrupt = uninterrupt
          @stopped = stopped
          @total = total
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}load_avgType
      #   l1 - SOAP::SOAPDouble
      #   l2 - SOAP::SOAPDouble
      #   l3 - SOAP::SOAPDouble
      class Load_avgType
        attr_accessor :l1
        attr_accessor :l2
        attr_accessor :l3

        def initialize(l1 = nil, l2 = nil, l3 = nil)
          @l1 = l1
          @l2 = l2
          @l3 = l3
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}cpu_loadType
      #   system - SOAP::SOAPLong
      #   user - SOAP::SOAPLong
      #   nice - SOAP::SOAPLong
      #   idle - SOAP::SOAPLong
      class Cpu_loadType
        attr_accessor :system
        attr_accessor :user
        attr_accessor :nice
        attr_accessor :idle

        def initialize(system = nil, user = nil, nice = nil, idle = nil)
          @system = system
          @user = user
          @nice = nice
          @idle = idle
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}cpuType
      #   mhz - SOAP::SOAPInt
      #   name - SOAP::SOAPString
      #   number - SOAP::SOAPInt
      #   cores - SOAP::SOAPInt
      #   hyperthreads - SOAP::SOAPInt
      #   units - SOAP::SOAPInt
      #   family - SOAP::SOAPString
      #   model - SOAP::SOAPString
      #   bogomips - SOAP::SOAPInt
      class CpuType
        attr_accessor :mhz
        attr_accessor :name
        attr_accessor :number
        attr_accessor :cores
        attr_accessor :hyperthreads
        attr_accessor :units
        attr_accessor :family
        attr_accessor :model
        attr_accessor :bogomips

        def initialize(mhz = nil, name = nil, number = nil, cores = nil, hyperthreads = nil, units = nil, family = nil, model = nil, bogomips = nil)
          @mhz = mhz
          @name = name
          @number = number
          @cores = cores
          @hyperthreads = hyperthreads
          @units = units
          @family = family
          @model = model
          @bogomips = bogomips
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}transferType
      #   input - Virtuozzo::SOAP::Types::Licensem::TransferType::Input
      #   output - Virtuozzo::SOAP::Types::Licensem::TransferType::Output
      class TransferType

        # inner class for member: input
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}input
        #   bytes - SOAP::SOAPLong
        #   packets - SOAP::SOAPLong
        class Input
          attr_accessor :bytes
          attr_accessor :packets

          def initialize(bytes = nil, packets = nil)
            @bytes = bytes
            @packets = packets
          end
        end

        # inner class for member: output
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}output
        #   bytes - SOAP::SOAPLong
        #   packets - SOAP::SOAPLong
        class Output
          attr_accessor :bytes
          attr_accessor :packets

          def initialize(bytes = nil, packets = nil)
            @bytes = bytes
            @packets = packets
          end
        end

        attr_accessor :input
        attr_accessor :output

        def initialize(input = nil, output = nil)
          @input = input
          @output = output
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ip_addressType
      #   ip - (any)
      #   netmask - (any)
      class Ip_addressType
        attr_accessor :ip
        attr_accessor :netmask

        def initialize(ip = nil, netmask = nil)
          @ip = ip
          @netmask = netmask
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}system_nodeType
      #   address - Virtuozzo::SOAP::Types::Licensem::System_nodeType::Address
      #   login - Virtuozzo::SOAP::Types::Licensem::System_nodeType::Login
      class System_nodeType

        # inner class for member: address
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}address
        #   ip - (any)
        class Address < Ip_addressType
          attr_accessor :ip

          def initialize(ip = nil)
            @ip = ip
          end
        end

        # inner class for member: login
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}login
        #   user - SOAP::SOAPString
        #   password - SOAP::SOAPBase64
        class Login
          attr_accessor :user
          attr_accessor :password

          def initialize(user = nil, password = nil)
            @user = user
            @password = password
          end
        end

        attr_accessor :address
        attr_accessor :login

        def initialize(address = nil, login = nil)
          @address = address
          @login = login
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}resourceType
      #   total - SOAP::SOAPLong
      #   used - SOAP::SOAPLong
      #   free - SOAP::SOAPLong
      #   avg - SOAP::SOAPLong
      #   min - SOAP::SOAPLong
      #   max - SOAP::SOAPLong
      class ResourceType
        attr_accessor :total
        attr_accessor :used
        attr_accessor :free
        attr_accessor :avg
        attr_accessor :min
        attr_accessor :max

        def initialize(total = nil, used = nil, free = nil, avg = nil, min = nil, max = nil)
          @total = total
          @used = used
          @free = free
          @avg = avg
          @min = min
          @max = max
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}intervalType
      #   start_time - (any)
      #   end_time - (any)
      class IntervalType
        attr_accessor :start_time
        attr_accessor :end_time

        def initialize(start_time = nil, end_time = nil)
          @start_time = start_time
          @end_time = end_time
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}statsType
      #   avg - SOAP::SOAPLong
      #   min - SOAP::SOAPLong
      #   max - SOAP::SOAPLong
      #   total - SOAP::SOAPLong
      #   cur - SOAP::SOAPLong
      #   soft - SOAP::SOAPLong
      #   hard - SOAP::SOAPLong
      class StatsType
        attr_accessor :avg
        attr_accessor :min
        attr_accessor :max
        attr_accessor :total
        attr_accessor :cur
        attr_accessor :soft
        attr_accessor :hard

        def initialize(avg = nil, min = nil, max = nil, total = nil, cur = nil, soft = nil, hard = nil)
          @avg = avg
          @min = min
          @max = max
          @total = total
          @cur = cur
          @soft = soft
          @hard = hard
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}net_addressType
      #   host - (any)
      #   mask - (any)
      class Net_addressType
        attr_accessor :host
        attr_accessor :mask

        def initialize(host = nil, mask = nil)
          @host = host
          @mask = mask
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}net_classType
      #   id - SOAP::SOAPString
      #   transfer - Virtuozzo::SOAP::Types::Licensem::TransferType
      class Net_classType
        attr_accessor :id
        attr_accessor :transfer

        def initialize(id = nil, transfer = nil)
          @id = id
          @transfer = transfer
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ip_rangeType
      #   id - SOAP::SOAPString
      #   start_ip - (any)
      #   subnet_mask - SOAP::SOAPInt
      #   comment - SOAP::SOAPString
      class Ip_rangeType
        attr_accessor :id
        attr_accessor :start_ip
        attr_accessor :subnet_mask
        attr_accessor :comment

        def initialize(id = nil, start_ip = nil, subnet_mask = nil, comment = nil)
          @id = id
          @start_ip = start_ip
          @subnet_mask = subnet_mask
          @comment = comment
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}sample_confType
      #   env_config - Virtuozzo::SOAP::Types::Licensem::Env_configType
      #   id - SOAP::SOAPString
      #   name - SOAP::SOAPString
      #   comment - SOAP::SOAPBase64
      #   vt_version - Virtuozzo::SOAP::Types::Licensem::Sample_confType::Vt_version
      class Sample_confType

        # inner class for member: vt_version
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}vt_version
        #   platform - SOAP::SOAPString
        #   architecture - SOAP::SOAPString
        #   vt_technology - SOAP::SOAPString
        class Vt_version
          attr_accessor :platform
          attr_accessor :architecture
          attr_accessor :vt_technology

          def initialize(platform = nil, architecture = nil, vt_technology = nil)
            @platform = platform
            @architecture = architecture
            @vt_technology = vt_technology
          end
        end

        attr_accessor :env_config
        attr_accessor :id
        attr_accessor :name
        attr_accessor :comment
        attr_accessor :vt_version

        def initialize(env_config = nil, id = nil, name = nil, comment = nil, vt_version = nil)
          @env_config = env_config
          @id = id
          @name = name
          @comment = comment
          @vt_version = vt_version
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}interfaceType
      #   name - SOAP::SOAPString
      #   bandwidth - SOAP::SOAPInt
      #   transfer - Virtuozzo::SOAP::Types::Licensem::TransferType
      #   ipaddress - (any)
      #   flags - SOAP::SOAPInt
      class InterfaceType
        attr_accessor :name
        attr_accessor :bandwidth
        attr_accessor :transfer
        attr_accessor :ipaddress
        attr_accessor :flags

        def initialize(name = nil, bandwidth = nil, transfer = nil, ipaddress = nil, flags = nil)
          @name = name
          @bandwidth = bandwidth
          @transfer = transfer
          @ipaddress = ipaddress
          @flags = flags
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}sys_infoType
      #   load_avg - Virtuozzo::SOAP::Types::Licensem::Load_avgType
      #   processes - Virtuozzo::SOAP::Types::Licensem::ProcessesType
      #   cpu_load - Virtuozzo::SOAP::Types::Licensem::Cpu_loadType
      #   cpu_states - Virtuozzo::SOAP::Types::Licensem::Cpu_loadType
      #   users - SOAP::SOAPInt
      #   uptime - SOAP::SOAPLong
      #   memory - Virtuozzo::SOAP::Types::Licensem::Sys_infoType::Memory
      #   swap - Virtuozzo::SOAP::Types::Licensem::Sys_infoType::Swap
      class Sys_infoType

        # inner class for member: memory
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}memory
        #   total - SOAP::SOAPLong
        #   used - SOAP::SOAPLong
        class Memory < ResourceType
          attr_accessor :total
          attr_accessor :used

          def initialize(total = nil, used = nil)
            @total = total
            @used = used
          end
        end

        # inner class for member: swap
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}swap
        #   total - SOAP::SOAPLong
        #   used - SOAP::SOAPLong
        class Swap < ResourceType
          attr_accessor :total
          attr_accessor :used

          def initialize(total = nil, used = nil)
            @total = total
            @used = used
          end
        end

        attr_accessor :load_avg
        attr_accessor :processes
        attr_accessor :cpu_load
        attr_accessor :cpu_states
        attr_accessor :users
        attr_accessor :uptime
        attr_accessor :memory
        attr_accessor :swap

        def initialize(load_avg = nil, processes = nil, cpu_load = nil, cpu_states = nil, users = nil, uptime = nil, memory = nil, swap = nil)
          @load_avg = load_avg
          @processes = processes
          @cpu_load = cpu_load
          @cpu_states = cpu_states
          @users = users
          @uptime = uptime
          @memory = memory
          @swap = swap
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ps_infoType
      #   process - Virtuozzo::SOAP::Types::Licensem::Ps_infoType::C_Process
      #   param_id - SOAP::SOAPString
      #   run - SOAP::SOAPInt
      #   idle - SOAP::SOAPInt
      #   zombie - SOAP::SOAPInt
      #   sleep - SOAP::SOAPInt
      #   uninterrupt - SOAP::SOAPInt
      #   stopped - SOAP::SOAPInt
      #   total - SOAP::SOAPInt
      class Ps_infoType

        # inner class for member: process
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}process
        #   pid - SOAP::SOAPInt
        #   param - SOAP::SOAPBase64
        class C_Process
          attr_accessor :pid
          attr_accessor :param

          def initialize(pid = nil, param = [])
            @pid = pid
            @param = param
          end
        end

        attr_accessor :process
        attr_accessor :param_id
        attr_accessor :run
        attr_accessor :idle
        attr_accessor :zombie
        attr_accessor :sleep
        attr_accessor :uninterrupt
        attr_accessor :stopped
        attr_accessor :total

        def initialize(process = [], param_id = [], run = nil, idle = nil, zombie = nil, sleep = nil, uninterrupt = nil, stopped = nil, total = nil)
          @process = process
          @param_id = param_id
          @run = run
          @idle = idle
          @zombie = zombie
          @sleep = sleep
          @uninterrupt = uninterrupt
          @stopped = stopped
          @total = total
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}load_avg_statsType
      #   l1 - Virtuozzo::SOAP::Types::Licensem::Load_avg_statsType::L1
      #   l2 - Virtuozzo::SOAP::Types::Licensem::Load_avg_statsType::L2
      #   l3 - Virtuozzo::SOAP::Types::Licensem::Load_avg_statsType::L3
      class Load_avg_statsType

        # inner class for member: l1
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}l1
        #   avg - SOAP::SOAPLong
        #   min - SOAP::SOAPLong
        #   max - SOAP::SOAPLong
        #   cur - SOAP::SOAPLong
        class L1 < StatsType
          attr_accessor :avg
          attr_accessor :min
          attr_accessor :max
          attr_accessor :cur

          def initialize(avg = nil, min = nil, max = nil, cur = nil)
            @avg = avg
            @min = min
            @max = max
            @cur = cur
          end
        end

        # inner class for member: l2
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}l2
        #   avg - SOAP::SOAPLong
        #   min - SOAP::SOAPLong
        #   max - SOAP::SOAPLong
        #   cur - SOAP::SOAPLong
        class L2 < StatsType
          attr_accessor :avg
          attr_accessor :min
          attr_accessor :max
          attr_accessor :cur

          def initialize(avg = nil, min = nil, max = nil, cur = nil)
            @avg = avg
            @min = min
            @max = max
            @cur = cur
          end
        end

        # inner class for member: l3
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}l3
        #   avg - SOAP::SOAPLong
        #   min - SOAP::SOAPLong
        #   max - SOAP::SOAPLong
        #   cur - SOAP::SOAPLong
        class L3 < StatsType
          attr_accessor :avg
          attr_accessor :min
          attr_accessor :max
          attr_accessor :cur

          def initialize(avg = nil, min = nil, max = nil, cur = nil)
            @avg = avg
            @min = min
            @max = max
            @cur = cur
          end
        end

        attr_accessor :l1
        attr_accessor :l2
        attr_accessor :l3

        def initialize(l1 = nil, l2 = nil, l3 = nil)
          @l1 = l1
          @l2 = l2
          @l3 = l3
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}env_resourceType
      #   eid - (any)
      #   ip_pool - Virtuozzo::SOAP::Types::Licensem::Ip_poolType
      class Env_resourceType
        attr_accessor :eid
        attr_accessor :ip_pool

        def initialize(eid = nil, ip_pool = nil)
          @eid = eid
          @ip_pool = ip_pool
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ip_poolType
      #   ip_range - Virtuozzo::SOAP::Types::Licensem::Ip_poolType::Ip_range
      #   ip - (any)
      class Ip_poolType

        # inner class for member: ip_range
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ip_range
        #   start_ip - (any)
        #   end_ip - (any)
        class Ip_range
          attr_accessor :start_ip
          attr_accessor :end_ip

          def initialize(start_ip = nil, end_ip = nil)
            @start_ip = start_ip
            @end_ip = end_ip
          end
        end

        attr_accessor :ip_range
        attr_accessor :ip

        def initialize(ip_range = [], ip = [])
          @ip_range = ip_range
          @ip = ip
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}usageType
      #   total - SOAP::SOAPLong
      #   used - SOAP::SOAPLong
      #   free - SOAP::SOAPLong
      class UsageType
        attr_accessor :total
        attr_accessor :used
        attr_accessor :free

        def initialize(total = nil, used = nil, free = nil)
          @total = total
          @used = used
          @free = free
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}credentialType
      #   id - SOAP::SOAPString
      #   policy - SOAP::SOAPInt
      #   description - SOAP::SOAPBase64
      #   cred - Virtuozzo::SOAP::Types::Licensem::CredentialType
      class CredentialType
        attr_accessor :id
        attr_accessor :policy
        attr_accessor :description
        attr_accessor :cred

        def initialize(id = nil, policy = nil, description = nil, cred = [])
          @id = id
          @policy = policy
          @description = description
          @cred = cred
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}root_credentialType
      #   id - SOAP::SOAPString
      #   policy - SOAP::SOAPInt
      #   description - SOAP::SOAPBase64
      #   cred - Virtuozzo::SOAP::Types::Licensem::CredentialType
      #   objects - Virtuozzo::SOAP::Types::Licensem::Root_credentialType::Objects
      class Root_credentialType < CredentialType

        # inner class for member: objects
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}objects
        class Objects < ::Array
        end

        attr_accessor :id
        attr_accessor :policy
        attr_accessor :description
        attr_accessor :cred
        attr_accessor :objects

        def initialize(id = nil, policy = nil, description = nil, cred = [], objects = nil)
          @id = id
          @policy = policy
          @description = description
          @cred = cred
          @objects = objects
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}tokenType
      #   user - (any)
      #   groups - Virtuozzo::SOAP::Types::Licensem::TokenType::Groups
      #   deny_only_sids - Virtuozzo::SOAP::Types::Licensem::TokenType::Deny_only_sids
      #   privileges - Virtuozzo::SOAP::Types::Licensem::TokenType::Privileges
      #   source - Virtuozzo::SOAP::Types::Licensem::TokenType::Source
      class TokenType

        # inner class for member: groups
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}groups
        class Groups < ::Array
        end

        # inner class for member: deny_only_sids
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}deny_only_sids
        class Deny_only_sids < ::Array
        end

        # inner class for member: privileges
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}privileges
        class Privileges < ::Array
        end

        # inner class for member: source
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}source
        #   name - SOAP::SOAPString
        #   id - (any)
        class Source
          attr_accessor :name
          attr_accessor :id

          def initialize(name = nil, id = nil)
            @name = name
            @id = id
          end
        end

        attr_accessor :user
        attr_accessor :groups
        attr_accessor :deny_only_sids
        attr_accessor :privileges
        attr_accessor :source

        def initialize(user = nil, groups = nil, deny_only_sids = nil, privileges = nil, source = nil)
          @user = user
          @groups = groups
          @deny_only_sids = deny_only_sids
          @privileges = privileges
          @source = source
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}connectivity_infoType
      #   protocol - SOAP::SOAPString
      #   address - SOAP::SOAPString
      #   port - SOAP::SOAPUnsignedInt
      class Connectivity_infoType
        attr_accessor :protocol
        attr_accessor :address
        attr_accessor :port

        def initialize(protocol = nil, address = nil, port = nil)
          @protocol = protocol
          @address = address
          @port = port
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}connection_infoType
      #   protocol - SOAP::SOAPString
      #   address - SOAP::SOAPString
      #   port - SOAP::SOAPUnsignedInt
      #   login - Virtuozzo::SOAP::Types::Licensem::Auth_nameType
      #   password - SOAP::SOAPBase64
      class Connection_infoType < Connectivity_infoType
        attr_accessor :protocol
        attr_accessor :address
        attr_accessor :port
        attr_accessor :login
        attr_accessor :password

        def initialize(protocol = nil, address = nil, port = nil, login = nil, password = nil)
          @protocol = protocol
          @address = address
          @port = port
          @login = login
          @password = password
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}auth_nameType
      #   name - SOAP::SOAPBase64
      #   domain - SOAP::SOAPBase64
      #   realm - (any)
      class Auth_nameType
        attr_accessor :name
        attr_accessor :domain
        attr_accessor :realm

        def initialize(name = nil, domain = nil, realm = nil)
          @name = name
          @domain = domain
          @realm = realm
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}eid_listType
      class Eid_listType < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}vt_infoType
      class Vt_infoType
        attr_reader :__xmlele_any

        def set_any(elements)
          @__xmlele_any = elements
        end

        def initialize
          @__xmlele_any = nil
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}vt_settingsType
      #   default_sample_id - (any)
      class Vt_settingsType
        attr_accessor :default_sample_id

        def initialize(default_sample_id = nil)
          @default_sample_id = default_sample_id
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}groupType
      #   user - Virtuozzo::SOAP::Types::Licensem::GroupType::User
      #   member_group - Virtuozzo::SOAP::Types::Licensem::GroupType::Member_group
      #   name - SOAP::SOAPString
      #   gid - SOAP::SOAPInt
      class GroupType
        attr_accessor :user
        attr_accessor :member_group
        attr_accessor :name
        attr_accessor :gid

        def initialize(user = [], member_group = [], name = nil, gid = nil)
          @user = user
          @member_group = member_group
          @name = name
          @gid = gid
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}userType
      #   initial_group - Virtuozzo::SOAP::Types::Licensem::UserType::Initial_group
      #   group - Virtuozzo::SOAP::Types::Licensem::UserType::Group
      #   uid - SOAP::SOAPInt
      #   shell - SOAP::SOAPString
      #   password - SOAP::SOAPBase64
      #   home_dir - SOAP::SOAPString
      #   name - SOAP::SOAPString
      #   comment - SOAP::SOAPString
      class UserType

        # inner class for member: initial_group
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}initial_group
        #   name - SOAP::SOAPString
        #   gid - SOAP::SOAPInt
        class Initial_group < GroupType
          attr_accessor :name
          attr_accessor :gid

          def initialize(name = nil, gid = nil)
            @name = name
            @gid = gid
          end
        end

        # inner class for member: group
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}group
        #   name - SOAP::SOAPString
        #   gid - SOAP::SOAPInt
        class Group < GroupType
          attr_accessor :name
          attr_accessor :gid

          def initialize(name = nil, gid = nil)
            @name = name
            @gid = gid
          end
        end

        attr_accessor :initial_group
        attr_accessor :group
        attr_accessor :uid
        attr_accessor :shell
        attr_accessor :password
        attr_accessor :home_dir
        attr_accessor :name
        attr_accessor :comment

        def initialize(initial_group = nil, group = [], uid = nil, shell = nil, password = nil, home_dir = nil, name = nil, comment = nil)
          @initial_group = initial_group
          @group = group
          @uid = uid
          @shell = shell
          @password = password
          @home_dir = home_dir
          @name = name
          @comment = comment
        end
      end

      class GroupType

        # inner class for member: user
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}user
        #   name - SOAP::SOAPString
        class User < UserType
          attr_accessor :name

          def initialize(name = nil)
            @name = name
          end
        end

        # inner class for member: member_group
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}member_group
        #   name - SOAP::SOAPString
        class Member_group < GroupType
          attr_accessor :name

          def initialize(name = nil)
            @name = name
          end
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}packageType
      #   name - SOAP::SOAPString
      #   summary - SOAP::SOAPString
      #   os - Virtuozzo::SOAP::Types::Licensem::OsType
      #   description - SOAP::SOAPString
      #   arch - SOAP::SOAPString
      #   version - SOAP::SOAPString
      class PackageType
        attr_accessor :name
        attr_accessor :summary
        attr_accessor :os
        attr_accessor :description
        attr_accessor :arch
        attr_accessor :version

        def initialize(name = nil, summary = nil, os = nil, description = nil, arch = nil, version = nil)
          @name = name
          @summary = summary
          @os = os
          @description = description
          @arch = arch
          @version = version
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}event_dataType
      class Event_dataType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}license_eventType
      #   license - Virtuozzo::SOAP::Types::Licensem::License_eventType::License
      class License_eventType < Event_dataType

        # inner class for member: license
        # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}license
        #   serial - SOAP::SOAPBase64
        #   status - SOAP::SOAPBase64
        class License
          attr_accessor :serial
          attr_accessor :status

          def initialize(serial = nil, status = nil)
            @serial = serial
            @status = status
          end
        end

        attr_accessor :license

        def initialize(license = [])
          @license = license
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}alert_dataType
      #   type - SOAP::SOAPInt
      class Alert_dataType < Event_dataType
        attr_accessor :type

        def initialize(type = nil)
          @type = type
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}named_listType
      #   name - SOAP::SOAPString
      #   value - SOAP::SOAPBase64
      class Named_listType
        attr_accessor :name
        attr_accessor :value

        def initialize(name = nil, value = [])
          @name = name
          @value = value
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}modType
      #   name - SOAP::SOAPString
      #   value - SOAP::SOAPBase64
      #   op - SOAP::SOAPInt
      class ModType < Named_listType
        attr_accessor :name
        attr_accessor :value
        attr_accessor :op

        def initialize(name = nil, value = [], op = nil)
          @name = name
          @value = value
          @op = op
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}realmType
      #   id - (any)
      #   type - SOAP::SOAPInt
      #   name - SOAP::SOAPString
      #   builtin - (any)
      class RealmType
        attr_accessor :id
        attr_accessor :type
        attr_accessor :name
        attr_accessor :builtin

        def initialize(id = nil, type = nil, name = nil, builtin = nil)
          @id = id
          @type = type
          @name = name
          @builtin = builtin
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}eventType
      #   eid - (any)
      #   time - (any)
      #   source - SOAP::SOAPString
      #   category - SOAP::SOAPString
      #   sid - (any)
      #   count - SOAP::SOAPInt
      #   id - (any)
      #   info - Virtuozzo::SOAP::Types::Licensem::InfoType
      #   data - Virtuozzo::SOAP::Types::Licensem::EventType::C_Data
      class EventType

        # inner class for member: data
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}data
        #   event_data - Virtuozzo::SOAP::Types::Licensem::Event_dataType
        class C_Data
          attr_accessor :event_data

          def initialize(event_data = nil)
            @event_data = event_data
          end
        end

        attr_accessor :eid
        attr_accessor :time
        attr_accessor :source
        attr_accessor :category
        attr_accessor :sid
        attr_accessor :count
        attr_accessor :id
        attr_accessor :info
        attr_accessor :data

        def initialize(eid = nil, time = nil, source = nil, category = nil, sid = nil, count = nil, id = nil, info = nil, data = nil)
          @eid = eid
          @time = time
          @source = source
          @category = category
          @sid = sid
          @count = count
          @id = id
          @info = info
          @data = data
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}infoType
      #   message - SOAP::SOAPBase64
      #   translate - (any)
      #   parameter - Virtuozzo::SOAP::Types::Licensem::InfoType
      #   name - SOAP::SOAPString
      class InfoType
        attr_accessor :message
        attr_accessor :translate
        attr_accessor :parameter
        attr_accessor :name

        def initialize(message = nil, translate = nil, parameter = [], name = nil)
          @message = message
          @translate = translate
          @parameter = parameter
          @name = name
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}aceType
      #   type - SOAP::SOAPInt
      #   sid - (any)
      #   rights - SOAP::SOAPBase64
      class AceType
        attr_accessor :type
        attr_accessor :sid
        attr_accessor :rights

        def initialize(type = nil, sid = nil, rights = nil)
          @type = type
          @sid = sid
          @rights = rights
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}security_descriptorType
      #   owner - (any)
      #   group - (any)
      #   dacl - Virtuozzo::SOAP::Types::Licensem::Security_descriptorType::Dacl
      class Security_descriptorType

        # inner class for member: dacl
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}dacl
        class Dacl < ::Array
        end

        attr_accessor :owner
        attr_accessor :group
        attr_accessor :dacl

        def initialize(owner = nil, group = nil, dacl = nil)
          @owner = owner
          @group = group
          @dacl = dacl
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}security_objectType
      # abstract
      class Security_objectType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}env_security_objectType
      #   eid - (any)
      class Env_security_objectType < Security_objectType
        attr_accessor :eid

        def initialize(eid = nil)
          @eid = eid
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}net_deviceType
      #   id - SOAP::SOAPString
      #   ip_address - Virtuozzo::SOAP::Types::Licensem::Ip_addressType
      #   dhcp - (any)
      #   network_id - SOAP::SOAPBase64
      #   status - Virtuozzo::SOAP::Types::Licensem::Net_deviceType::Status
      class Net_deviceType

        # inner class for member: status
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}status
        #   up - (any)
        #   down - (any)
        class Status
          attr_accessor :up
          attr_accessor :down

          def initialize(up = nil, down = nil)
            @up = up
            @down = down
          end
        end

        attr_accessor :id
        attr_accessor :ip_address
        attr_accessor :dhcp
        attr_accessor :network_id
        attr_accessor :status

        def initialize(id = nil, ip_address = [], dhcp = nil, network_id = nil, status = nil)
          @id = id
          @ip_address = ip_address
          @dhcp = dhcp
          @network_id = network_id
          @status = status
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}net_nicType
      #   id - SOAP::SOAPString
      #   ip_address - Virtuozzo::SOAP::Types::Licensem::Ip_addressType
      #   dhcp - (any)
      #   network_id - SOAP::SOAPBase64
      #   status - Virtuozzo::SOAP::Types::Licensem::Net_nicType::Status
      #   mac_address - SOAP::SOAPString
      class Net_nicType < Net_deviceType

        # inner class for member: status
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}status
        #   up - (any)
        #   down - (any)
        class Status
          attr_accessor :up
          attr_accessor :down

          def initialize(up = nil, down = nil)
            @up = up
            @down = down
          end
        end

        attr_accessor :id
        attr_accessor :ip_address
        attr_accessor :dhcp
        attr_accessor :network_id
        attr_accessor :status
        attr_accessor :mac_address

        def initialize(id = nil, ip_address = [], dhcp = nil, network_id = nil, status = nil, mac_address = nil)
          @id = id
          @ip_address = ip_address
          @dhcp = dhcp
          @network_id = network_id
          @status = status
          @mac_address = mac_address
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}voc_parameterType
      #   id - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   min - SOAP::SOAPString
      #   max - SOAP::SOAPString
      #   long - SOAP::SOAPString
      #   short - SOAP::SOAPString
      #   category - SOAP::SOAPString
      #   complex - SOAP::SOAPString
      #   default - SOAP::SOAPString
      #   measure - SOAP::SOAPString
      #   data - (any)
      #   name - (any)
      class Voc_parameterType
        attr_accessor :id
        attr_accessor :type
        attr_accessor :min
        attr_accessor :max
        attr_accessor :long
        attr_accessor :short
        attr_accessor :category
        attr_accessor :complex
        attr_accessor :default
        attr_accessor :measure
        attr_accessor :data
        attr_accessor :name

        def initialize(id = nil, type = nil, min = nil, max = nil, long = nil, short = nil, category = [], complex = nil, default = nil, measure = nil, data = nil, name = nil)
          @id = id
          @type = type
          @min = min
          @max = max
          @long = long
          @short = short
          @category = category
          @complex = complex
          @default = default
          @measure = measure
          @data = data
          @name = name
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}vocabularyType
      #   name - SOAP::SOAPString
      #   parameter - Virtuozzo::SOAP::Types::Licensem::Voc_parameterType
      #   category - Virtuozzo::SOAP::Types::Licensem::Voc_parameterType
      class VocabularyType
        attr_accessor :name
        attr_accessor :parameter
        attr_accessor :category

        def initialize(name = nil, parameter = [], category = [])
          @name = name
          @parameter = parameter
          @category = category
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}perf_statType
      #   cur - SOAP::SOAPAnySimpleType
      #   avg - SOAP::SOAPAnySimpleType
      #   max - SOAP::SOAPAnySimpleType
      #   min - SOAP::SOAPAnySimpleType
      class Perf_statType
        attr_accessor :cur
        attr_accessor :avg
        attr_accessor :max
        attr_accessor :min

        def initialize(cur = nil, avg = nil, max = nil, min = nil)
          @cur = cur
          @avg = avg
          @max = max
          @min = min
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}perf_dataType
      #   eid - (any)
      #   m_class - Virtuozzo::SOAP::Types::Licensem::Perf_dataType::C_Class
      #   interval - Virtuozzo::SOAP::Types::Licensem::IntervalType
      class Perf_dataType

        # inner class for member: class
        # {http://www.swsoft.com/webservices/vzl/4.0.0/types}class
        #   name - SOAP::SOAPString
        #   instance - Virtuozzo::SOAP::Types::Licensem::Perf_dataType::C_Class::Instance
        class C_Class

          # inner class for member: instance
          # {http://www.swsoft.com/webservices/vzl/4.0.0/types}instance
          #   name - SOAP::SOAPString
          #   counter - Virtuozzo::SOAP::Types::Licensem::Perf_dataType::C_Class::Instance::Counter
          class Instance

            # inner class for member: counter
            # {http://www.swsoft.com/webservices/vzl/4.0.0/types}counter
            #   name - SOAP::SOAPString
            #   value - Virtuozzo::SOAP::Types::Licensem::Perf_statType
            class Counter
              attr_accessor :name
              attr_accessor :value

              def initialize(name = nil, value = nil)
                @name = name
                @value = value
              end
            end

            attr_accessor :name
            attr_accessor :counter

            def initialize(name = nil, counter = [])
              @name = name
              @counter = counter
            end
          end

          attr_accessor :name
          attr_accessor :instance

          def initialize(name = nil, instance = [])
            @name = name
            @instance = instance
          end
        end

        attr_accessor :eid
        attr_accessor :interval

        def m_class
          @v_class
        end

        def m_class=(value)
          @v_class = value
        end

        def initialize(eid = nil, v_class = [], interval = nil)
          @eid = eid
          @v_class = v_class
          @interval = interval
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}log_options_baseType
      class Log_options_baseType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}log_optionsType
      class Log_optionsType < Log_options_baseType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}packet_headerType
      #   auth - Virtuozzo::SOAP::Types::Licensem::AuthType
      #   cookie - SOAP::SOAPString
      #   target - SOAP::SOAPString
      #   origin - SOAP::SOAPString
      #   src - Virtuozzo::SOAP::Types::Licensem::RouteType
      #   dst - Virtuozzo::SOAP::Types::Licensem::RouteType
      #   session - SOAP::SOAPString
      #   xmlattr_version - SOAP::SOAPString
      #   xmlattr_id - SOAP::SOAPString
      #   xmlattr_priority - SOAP::SOAPString
      #   xmlattr_time - SOAP::SOAPString
      #   xmlattr_progress - SOAP::SOAPString
      #   xmlattr_log - SOAP::SOAPString
      #   xmlattr_type - SOAP::SOAPInt
      #   xmlattr_timeout - SOAP::SOAPInt
      #   xmlattr_timeout_limit - SOAP::SOAPInt
      #   xmlattr_uid - SOAP::SOAPInt
      class Packet_headerType
        AttrC_Time = XSD::QName.new(nil, "time")
        AttrId = XSD::QName.new(nil, "id")
        AttrLog = XSD::QName.new(nil, "log")
        AttrPriority = XSD::QName.new(nil, "priority")
        AttrProgress = XSD::QName.new(nil, "progress")
        AttrTimeout = XSD::QName.new(nil, "timeout")
        AttrTimeout_limit = XSD::QName.new(nil, "timeout_limit")
        AttrType = XSD::QName.new(nil, "type")
        AttrUid = XSD::QName.new(nil, "uid")
        AttrVersion = XSD::QName.new(nil, "version")

        attr_accessor :auth
        attr_accessor :cookie
        attr_accessor :target
        attr_accessor :origin
        attr_accessor :src
        attr_accessor :dst
        attr_accessor :session

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_version
          __xmlattr[AttrVersion]
        end

        def xmlattr_version=(value)
          __xmlattr[AttrVersion] = value
        end

        def xmlattr_id
          __xmlattr[AttrId]
        end

        def xmlattr_id=(value)
          __xmlattr[AttrId] = value
        end

        def xmlattr_priority
          __xmlattr[AttrPriority]
        end

        def xmlattr_priority=(value)
          __xmlattr[AttrPriority] = value
        end

        def xmlattr_time
          __xmlattr[AttrC_Time]
        end

        def xmlattr_time=(value)
          __xmlattr[AttrC_Time] = value
        end

        def xmlattr_progress
          __xmlattr[AttrProgress]
        end

        def xmlattr_progress=(value)
          __xmlattr[AttrProgress] = value
        end

        def xmlattr_log
          __xmlattr[AttrLog]
        end

        def xmlattr_log=(value)
          __xmlattr[AttrLog] = value
        end

        def xmlattr_type
          __xmlattr[AttrType]
        end

        def xmlattr_type=(value)
          __xmlattr[AttrType] = value
        end

        def xmlattr_timeout
          __xmlattr[AttrTimeout]
        end

        def xmlattr_timeout=(value)
          __xmlattr[AttrTimeout] = value
        end

        def xmlattr_timeout_limit
          __xmlattr[AttrTimeout_limit]
        end

        def xmlattr_timeout_limit=(value)
          __xmlattr[AttrTimeout_limit] = value
        end

        def xmlattr_uid
          __xmlattr[AttrUid]
        end

        def xmlattr_uid=(value)
          __xmlattr[AttrUid] = value
        end

        def initialize(auth = nil, cookie = nil, target = [], origin = nil, src = nil, dst = nil, session = nil)
          @auth = auth
          @cookie = cookie
          @target = target
          @origin = origin
          @src = src
          @dst = dst
          @session = session
          @__xmlattr = {}
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}operatorType
      #   configuration - Virtuozzo::SOAP::Types::Licensem::ConfigurationType
      class OperatorType
        attr_accessor :configuration

        def initialize(configuration = nil)
          @configuration = configuration
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}operator_functionalType
      #   configuration - Virtuozzo::SOAP::Types::Licensem::ConfigurationType
      #   ok - Virtuozzo::SOAP::Types::Licensem::Operator_functionalType::Ok
      #   error - Virtuozzo::SOAP::Types::Licensem::Operator_functionalType::Error
      class Operator_functionalType < OperatorType

        # inner class for member: ok
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}ok
        class Ok
          def initialize
          end
        end

        # inner class for member: error
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}error
        #   code - SOAP::SOAPInt
        #   message - SOAP::SOAPString
        class Error
          attr_accessor :code
          attr_accessor :message

          def initialize(code = nil, message = nil)
            @code = code
            @message = message
          end
        end

        attr_accessor :configuration
        attr_accessor :ok
        attr_accessor :error

        def initialize(configuration = nil, ok = [], error = [])
          @configuration = configuration
          @ok = ok
          @error = error
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}licensemType
      #   configuration - Virtuozzo::SOAP::Types::Licensem::ConfigurationType
      #   ok - Virtuozzo::SOAP::Types::Licensem::LicensemType::Ok
      #   error - Virtuozzo::SOAP::Types::Licensem::LicensemType::Error
      #   list - Virtuozzo::SOAP::Types::Licensem::List
      #   install - Virtuozzo::SOAP::Types::Licensem::Install
      #   parse - Virtuozzo::SOAP::Types::Licensem::Parse
      #   delete - Virtuozzo::SOAP::Types::Licensem::Delete
      #   get_hwid - Virtuozzo::SOAP::Types::Licensem::Get_hwid
      #   update - Virtuozzo::SOAP::Types::Licensem::Update
      #   hwid - SOAP::SOAPString
      #   license - Virtuozzo::SOAP::Types::Licensem::LicenseType
      #   licenses - Virtuozzo::SOAP::Types::Licensem::LicensesType
      #   serial - SOAP::SOAPString
      class LicensemType < Operator_functionalType

        # inner class for member: ok
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}ok
        class Ok
          def initialize
          end
        end

        # inner class for member: error
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}error
        #   code - SOAP::SOAPInt
        #   message - SOAP::SOAPString
        class Error
          attr_accessor :code
          attr_accessor :message

          def initialize(code = nil, message = nil)
            @code = code
            @message = message
          end
        end

        attr_accessor :configuration
        attr_accessor :ok
        attr_accessor :error
        attr_accessor :list
        attr_accessor :install
        attr_accessor :parse
        attr_accessor :delete
        attr_accessor :get_hwid
        attr_accessor :update
        attr_accessor :hwid
        attr_accessor :license
        attr_accessor :licenses
        attr_accessor :serial

        def initialize(configuration = nil, ok = [], error = [], list = [], install = [], parse = [], delete = [], get_hwid = [], update = [], hwid = [], license = [], licenses = [], serial = [])
          @configuration = configuration
          @ok = ok
          @error = error
          @list = list
          @install = install
          @parse = parse
          @delete = delete
          @get_hwid = get_hwid
          @update = update
          @hwid = hwid
          @license = license
          @licenses = licenses
          @serial = serial
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}operator_periodicType
      #   configuration - Virtuozzo::SOAP::Types::Licensem::ConfigurationType
      #   ok - Virtuozzo::SOAP::Types::Licensem::Operator_periodicType::Ok
      #   error - Virtuozzo::SOAP::Types::Licensem::Operator_periodicType::Error
      #   start_monitor - Virtuozzo::SOAP::Types::Licensem::Start_monitorType
      #   stop_monitor - Virtuozzo::SOAP::Types::Licensem::Stop_monitorType
      #   set_period - Virtuozzo::SOAP::Types::Licensem::Set_periodType
      #   report - (any)
      class Operator_periodicType < Operator_functionalType

        # inner class for member: ok
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}ok
        class Ok
          def initialize
          end
        end

        # inner class for member: error
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}error
        #   code - SOAP::SOAPInt
        #   message - SOAP::SOAPString
        class Error
          attr_accessor :code
          attr_accessor :message

          def initialize(code = nil, message = nil)
            @code = code
            @message = message
          end
        end

        attr_accessor :configuration
        attr_accessor :ok
        attr_accessor :error
        attr_accessor :start_monitor
        attr_accessor :stop_monitor
        attr_accessor :set_period
        attr_accessor :report

        def initialize(configuration = nil, ok = [], error = [], start_monitor = nil, stop_monitor = nil, set_period = nil, report = nil)
          @configuration = configuration
          @ok = ok
          @error = error
          @start_monitor = start_monitor
          @stop_monitor = stop_monitor
          @set_period = set_period
          @report = report
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}set_periodType
      #   collect - SOAP::SOAPInt
      #   log - SOAP::SOAPInt
      #   report - SOAP::SOAPInt
      class Set_periodType
        attr_accessor :collect
        attr_accessor :log
        attr_accessor :report

        def initialize(collect = nil, log = nil, report = nil)
          @collect = collect
          @log = log
          @report = report
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}start_monitorType
      #   period - SOAP::SOAPInt
      class Start_monitorType
        attr_accessor :period
        attr_reader :__xmlele_any

        def set_any(elements)
          @__xmlele_any = elements
        end

        def initialize(period = nil)
          @period = period
          @__xmlele_any = nil
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}stop_monitorType
      class Stop_monitorType
        attr_reader :__xmlele_any

        def set_any(elements)
          @__xmlele_any = elements
        end

        def initialize
          @__xmlele_any = nil
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}authType
      class AuthType
        attr_reader :__xmlele_any

        def set_any(elements)
          @__xmlele_any = elements
        end

        def initialize
          @__xmlele_any = nil
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}routeType
      #   director - SOAP::SOAPString
      #   host - SOAP::SOAPString
      #   index - SOAP::SOAPString
      #   target - SOAP::SOAPString
      class RouteType
        attr_accessor :director
        attr_accessor :host
        attr_accessor :index
        attr_accessor :target

        def initialize(director = nil, host = nil, index = nil, target = nil)
          @director = director
          @host = host
          @index = index
          @target = target
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}dataType
      class DataType < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}configurationType
      class ConfigurationType
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}event_configurationType
      #   period - SOAP::SOAPInt
      class Event_configurationType < ConfigurationType
        attr_accessor :period

        def initialize(period = nil)
          @period = period
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}licensem_configurationType
      #   period - SOAP::SOAPInt
      class Licensem_configurationType < Event_configurationType
        attr_accessor :period

        def initialize(period = nil)
          @period = period
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}periodic_configurationType
      #   log_priority - SOAP::SOAPInt
      #   monitor_priority - SOAP::SOAPInt
      #   min_monitor_period - SOAP::SOAPInt
      #   min_monitor_period_root - SOAP::SOAPInt
      class Periodic_configurationType < ConfigurationType
        attr_accessor :log_priority
        attr_accessor :monitor_priority
        attr_accessor :min_monitor_period
        attr_accessor :min_monitor_period_root

        def initialize(log_priority = nil, monitor_priority = nil, min_monitor_period = nil, min_monitor_period_root = nil)
          @log_priority = log_priority
          @monitor_priority = monitor_priority
          @min_monitor_period = min_monitor_period
          @min_monitor_period_root = min_monitor_period_root
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}transport_type
      class Transport_type < ::String
        Tcp = Transport_type.new("tcp")
        Udp = Transport_type.new("udp")
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}yes_no_type
      class Yes_no_type < ::String
        No = Yes_no_type.new("no")
        Yes = Yes_no_type.new("yes")
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}list
      #   serial - SOAP::SOAPString
      #   type - SOAP::SOAPString
      class List
        attr_accessor :serial
        attr_accessor :type

        def initialize(serial = [], type = [])
          @serial = serial
          @type = type
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}install
      #   license - SOAP::SOAPString
      #   options - Virtuozzo::SOAP::Types::Licensem::Install::Options
      class Install

        # inner class for member: options
        # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}options
        class Options < ::Array
        end

        attr_accessor :license
        attr_accessor :options

        def initialize(license = nil, options = nil)
          @license = license
          @options = options
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}parse
      #   body - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   serial - SOAP::SOAPString
      class Parse
        attr_accessor :body
        attr_accessor :type
        attr_accessor :serial

        def initialize(body = nil, type = [], serial = [])
          @body = body
          @type = type
          @serial = serial
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}delete
      #   type - SOAP::SOAPString
      #   serial - SOAP::SOAPString
      class Delete
        attr_accessor :type
        attr_accessor :serial

        def initialize(type = [], serial = [])
          @type = type
          @serial = serial
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}get_hwid
      class Get_hwid < ::String
        def initialize(*arg)
          super
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}update
      #   serial - SOAP::SOAPString
      class Update
        attr_accessor :serial

        def initialize(serial = nil)
          @serial = serial
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}listResponse
      class ListResponse < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}parseResponse
      class ParseResponse < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}installResponse
      class InstallResponse < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}updateResponse
      class UpdateResponse < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}get_hwidResponse
      class Get_hwidResponse < ::Array
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/licensem}deleteResponse
      class DeleteResponse
        def initialize
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/types}ok
      class Ok < ::String
        def initialize(*arg)
          super
        end
      end

      # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}packet
      #   auth - Virtuozzo::SOAP::Types::Licensem::AuthType
      #   cookie - SOAP::SOAPString
      #   target - SOAP::SOAPString
      #   origin - SOAP::SOAPString
      #   src - Virtuozzo::SOAP::Types::Licensem::RouteType
      #   dst - Virtuozzo::SOAP::Types::Licensem::RouteType
      #   session - SOAP::SOAPString
      #   data - Virtuozzo::SOAP::Types::Licensem::Packet::C_Data
      #   xmlattr_version - SOAP::SOAPString
      #   xmlattr_id - SOAP::SOAPString
      #   xmlattr_priority - SOAP::SOAPString
      #   xmlattr_time - SOAP::SOAPString
      #   xmlattr_progress - SOAP::SOAPString
      #   xmlattr_log - SOAP::SOAPString
      #   xmlattr_type - SOAP::SOAPInt
      #   xmlattr_timeout - SOAP::SOAPInt
      #   xmlattr_timeout_limit - SOAP::SOAPInt
      #   xmlattr_uid - SOAP::SOAPInt
      class Packet < Packet_headerType
        AttrC_Time = XSD::QName.new(nil, "time")
        AttrId = XSD::QName.new(nil, "id")
        AttrLog = XSD::QName.new(nil, "log")
        AttrPriority = XSD::QName.new(nil, "priority")
        AttrProgress = XSD::QName.new(nil, "progress")
        AttrTimeout = XSD::QName.new(nil, "timeout")
        AttrTimeout_limit = XSD::QName.new(nil, "timeout_limit")
        AttrType = XSD::QName.new(nil, "type")
        AttrUid = XSD::QName.new(nil, "uid")
        AttrVersion = XSD::QName.new(nil, "version")

        # inner class for member: data
        # {http://www.swsoft.com/webservices/vzl/4.0.0/protocol}data
        class C_Data < ::Array
        end

        attr_accessor :auth
        attr_accessor :cookie
        attr_accessor :target
        attr_accessor :origin
        attr_accessor :src
        attr_accessor :dst
        attr_accessor :session
        attr_accessor :data

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_version
          __xmlattr[AttrVersion]
        end

        def xmlattr_version=(value)
          __xmlattr[AttrVersion] = value
        end

        def xmlattr_id
          __xmlattr[AttrId]
        end

        def xmlattr_id=(value)
          __xmlattr[AttrId] = value
        end

        def xmlattr_priority
          __xmlattr[AttrPriority]
        end

        def xmlattr_priority=(value)
          __xmlattr[AttrPriority] = value
        end

        def xmlattr_time
          __xmlattr[AttrC_Time]
        end

        def xmlattr_time=(value)
          __xmlattr[AttrC_Time] = value
        end

        def xmlattr_progress
          __xmlattr[AttrProgress]
        end

        def xmlattr_progress=(value)
          __xmlattr[AttrProgress] = value
        end

        def xmlattr_log
          __xmlattr[AttrLog]
        end

        def xmlattr_log=(value)
          __xmlattr[AttrLog] = value
        end

        def xmlattr_type
          __xmlattr[AttrType]
        end

        def xmlattr_type=(value)
          __xmlattr[AttrType] = value
        end

        def xmlattr_timeout
          __xmlattr[AttrTimeout]
        end

        def xmlattr_timeout=(value)
          __xmlattr[AttrTimeout] = value
        end

        def xmlattr_timeout_limit
          __xmlattr[AttrTimeout_limit]
        end

        def xmlattr_timeout_limit=(value)
          __xmlattr[AttrTimeout_limit] = value
        end

        def xmlattr_uid
          __xmlattr[AttrUid]
        end

        def xmlattr_uid=(value)
          __xmlattr[AttrUid] = value
        end

        def initialize(auth = nil, cookie = nil, target = [], origin = nil, src = nil, dst = nil, session = nil, data = nil)
          @auth = auth
          @cookie = cookie
          @target = target
          @origin = origin
          @src = src
          @dst = dst
          @session = session
          @data = data
          @__xmlattr = {}
        end
      end
    end
    end
  end
end