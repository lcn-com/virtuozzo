require 'virtuozzo/soap/drivers/sessionm'
require 'virtuozzo/soap/drivers/envm'
require 'virtuozzo/soap/drivers/packagem'
require 'virtuozzo/soap/drivers/relocator'
require 'virtuozzo/soap/drivers/devm'
require 'virtuozzo/soap/drivers/networkm'
require 'virtuozzo/soap/drivers/proc_info'
require 'virtuozzo/soap/drivers/processm'
require 'virtuozzo/soap/drivers/up2date'
require 'virtuozzo/soap/drivers/support'
require 'virtuozzo/soap/drivers/authm'
require 'virtuozzo/soap/drivers/alertm'
require 'virtuozzo/soap/drivers/event_log'
require 'virtuozzo/soap/drivers/server_group'
require 'virtuozzo/soap/drivers/backupm'
require 'virtuozzo/soap/drivers/computerm'
require 'virtuozzo/soap/drivers/env_samplem'
require 'virtuozzo/soap/drivers/filer'
require 'virtuozzo/soap/drivers/firewallm'
require 'virtuozzo/soap/drivers/licensem'
require 'virtuozzo/soap/drivers/mailer'
require 'virtuozzo/soap/drivers/op_log'
require 'virtuozzo/soap/drivers/perf_mon'
require 'virtuozzo/soap/drivers/res_log'
require 'virtuozzo/soap/drivers/resourcem'
require 'virtuozzo/soap/drivers/scheduler'
require 'virtuozzo/soap/drivers/servicem'
require 'virtuozzo/soap/drivers/userm'

require 'virtuozzo/soap/header_handler'

module Virtuozzo
  module SOAP
    ##
    # The Connection class provides for establishing of a SOAP session with a
    # Virtuozzo Agent using either an SSL-secured or unsecure HTTP connection.
    # Session data is stored for each Connection instance allowing all messages
    # sent to be properly authenticated according to the Virtuozzo SOAP API
    # specifications.
    #
    class Connection
      ##
      # Establish a new session with the specified host using the supplied
      # credentials and options.
      #
      # The opts hash may define :debug to be either true, false or the
      # 'device' to be used for wiredumps, defaults to false. If set to true
      # STDERR will be used for wiredumps.
      #
      # The opts hash may define :verify_ssl to be either true or false in
      # regards to whether SSL certificates should be verified for the various
      # SOAP::RPC::Driver connections. The default is +false+, causing no SSL
      # certificate verification.
      #
      # The opts hash may define a :realm for authentication. The default is
      # the Virtuozzo system realm represented by the Virtuozzo::DEFAULT_REALM
      # constant.
      #
      # @param [String] host the host to connect to
      # @param [String] username the user to authenticate as
      # @param [String] password the password to use for authentication
      # @param [Hash] opts additional options for the connection
      #
      def initialize(host, username, password, opts = {})
        options = {
          :debug => false,
          :verify_ssl => false,
          :realm => Virtuozzo::DEFAULT_REALM
        }.merge(opts)

        @endpoint = host
        @username = username
        @password = password
        @realm    = options[:realm]
        
        @session_id = nil

        disable_ssl_verification unless options[:verify_ssl]
        setup_debug_mode(options[:debug]) if options[:debug]
        establish_session
        setup_header_handler
      end

      ##
      # Handle for the sessionm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] sessionm SOAP::RPC::Driver instance.
      def sessionm
        @sessionm ||= Virtuozzo::SOAP::Drivers::Sessionm.new(@endpoint)
      end
  
      ##
      # Handle for the vzaenvm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzaenvmm SOAP::RPC::Driver instance.
      def envm
        @envm ||= Virtuozzo::SOAP::Drivers::Envm.new(@endpoint)
      end
  
      ##
      # Handle for the vzapackagem interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzapackagem SOAP::RPC::Driver instance.
      def packagem
        @packagem ||= Virtuozzo::SOAP::Drivers::Packagem.new(@endpoint)
      end
  
      ##
      # Handle for the vzarelocator interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzarelocator SOAP::RPC::Driver instance.
      def relocator
        @relocator ||= Virtuozzo::SOAP::Drivers::Relocator.new(@endpoint)
      end
  
      ##
      # Handle for the vzadevm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzadevm SOAP::RPC::Driver instance.
      def devm
        @devm ||= Virtuozzo::SOAP::Drivers::Devm.new(@endpoint)
      end
  
      ##
      # Handle for the vzanetworkm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzanetworkm SOAP::RPC::Driver instance.
      def networkm
        @networkm ||= Virtuozzo::SOAP::Drivers::Networkm.new(@endpoint)
      end
  
      ##
      # Handle for the vzaproc_info interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzaproc_info SOAP::RPC::Driver instance.
      def proc_info
        @proc_info ||= Virtuozzo::SOAP::Drivers::ProcInfo.new(@endpoint)
      end
  
      ##
      # Handle for the vzaprocessmm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzaprocessm SOAP::RPC::Driver instance.
      def processm
        @processm ||= Virtuozzo::SOAP::Drivers::Processm.new(@endpoint)
      end
  
      ##
      # Handle for the vzaup2date interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzaup2date SOAP::RPC::Driver instance.
      def up2date
        @up2date ||= Virtuozzo::SOAP::Drivers::Up2date.new(@endpoint)
      end
  
      ##
      # Handle for the vzasupport interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] vzasupport SOAP::RPC::Driver instance.
      def support
        @support ||= Virtuozzo::SOAP::Drivers::Support.new(@endpoint)
      end
      
      ##
      # Handle for the env_samplem interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] env_samplem SOAP::RPC::Driver instance.
      def env_samplem
        @env_samplem ||= Virtuozzo::SOAP::Drivers::EnvSamplem.new(@endpoint)
      end
      
      ##
      # Handle for the alertm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] alertm SOAP::RPC::Driver instance.
      def alertm
        @alertm ||= Virtuozzo::SOAP::Drivers::Alertm.new(@endpoint)
      end

      ##
      # Handle for the authm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] authm SOAP::RPC::Driver instance.
      def authm
        @authm ||= Virtuozzo::SOAP::Drivers::Authm.new(@endpoint)
      end
      
      ##
      # Handle for the backupm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] backupm SOAP::RPC::Driver instance.
      def backupm
        @backupm ||= Virtuozzo::SOAP::Drivers::Backupm.new(@endpoint)
      end
      
      ##
      # Handle for the computerm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] computerm SOAP::RPC::Driver instance.
      def computerm
        @computerm ||= Virtuozzo::SOAP::Drivers::Computerm.new(@endpoint)
      end
      
      ##
      # Handle for the event_log interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] event_log SOAP::RPC::Driver instance.
      def event_log
        @event_log ||= Virtuozzo::SOAP::Drivers::EventLog.new(@endpoint)
      end
      
      ##
      # Handle for the server_group interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] server_group SOAP::RPC::Driver instance.
      def server_group
        @server_group ||= Virtuozzo::SOAP::Drivers::ServerGroup.new(@endpoint)
      end
      
      ##
      # Handle for the filer interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] filer SOAP::RPC::Driver instance.
      def filer
        @filer ||= Virtuozzo::SOAP::Drivers::Filer.new(@endpoint)
      end
      
      ##
      # Handle for the firewallm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] firewallm SOAP::RPC::Driver instance.
      def firewallm
        @firewallm ||= Virtuozzo::SOAP::Drivers::Firewallm.new(@endpoint)
      end
      
      ##
      # Handle for the licensem interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] licensem SOAP::RPC::Driver instance.
      def licensem
        @licensem ||= Virtuozzo::SOAP::Drivers::Licensem.new(@endpoint)
      end
      
      ##
      # Handle for the mailer interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] mailer SOAP::RPC::Driver instance.
      def mailer
        @mailer ||= Virtuozzo::SOAP::Drivers::Mailer.new(@endpoint)
      end
      
      ##
      # Handle for the op_log interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] op_log SOAP::RPC::Driver instance.
      def op_log
        @op_log ||= Virtuozzo::SOAP::Drivers::OpLog.new(@endpoint)
      end
      
      ##
      # Handle for the perf_mon interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] perf_mon SOAP::RPC::Driver instance.
      def perf_mon
        @perf_mon ||= Virtuozzo::SOAP::Drivers::PerfMon.new(@endpoint)
      end
      
      ##
      # Handle for the res_log interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] res_log SOAP::RPC::Driver instance.
      def res_log
        @res_log ||= Virtuozzo::SOAP::Drivers::ResLog.new(@endpoint)
      end
      
      ##
      # Handle for the resourcem interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] resourcem SOAP::RPC::Driver instance.
      def resourcem
        @resourcem ||= Virtuozzo::SOAP::Drivers::Resourcem.new(@endpoint)
      end
      
      ##
      # Handle for the scheduler interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] scheduler SOAP::RPC::Driver instance.
      def scheduler
        @scheduler ||= Virtuozzo::SOAP::Drivers::Scheduler.new(@endpoint)
      end
      
      ##
      # Handle for the servicem interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] servicem SOAP::RPC::Driver instance.
      def servicem
        @servicem ||= Virtuozzo::SOAP::Drivers::Servicem.new(@endpoint)
      end
      
      ##
      # Handle for the userm interface of the Virtuozzo API.
      #
      # @return [SOAP::RPC::Driver] userm SOAP::RPC::Driver instance.
      def userm
        @userm ||= Virtuozzo::SOAP::Drivers::Userm.new(@endpoint)
      end

      private

      ##
      # Disables verification of SSL certificates for all drivers.
      #
      def disable_ssl_verification
        if @endpoint =~ /^https/
          sessionm.options['protocol.http.ssl_config.verify_mode'] = nil
          envm.options['protocol.http.ssl_config.verify_mode'] = nil
          packagem.options['protocol.http.ssl_config.verify_mode'] = nil
          relocator.options['protocol.http.ssl_config.verify_mode'] = nil
          devm.options['protocol.http.ssl_config.verify_mode'] = nil
          networkm.options['protocol.http.ssl_config.verify_mode'] = nil
          proc_info.options['protocol.http.ssl_config.verify_mode'] = nil
          processm.options['protocol.http.ssl_config.verify_mode'] = nil
          up2date.options['protocol.http.ssl_config.verify_mode'] = nil
          support.options['protocol.http.ssl_config.verify_mode'] = nil
          env_samplem.options['protocol.http.ssl_config.verify_mode'] = nil
          alertm.options['protocol.http.ssl_config.verify_mode'] = nil
          authm.options['protocol.http.ssl_config.verify_mode'] = nil
          backupm.options['protocol.http.ssl_config.verify_mode'] = nil
          computerm.options['protocol.http.ssl_config.verify_mode'] = nil
          event_log.options['protocol.http.ssl_config.verify_mode'] = nil
          server_group.options['protocol.http.ssl_config.verify_mode'] = nil
          filer.options['protocol.http.ssl_config.verify_mode'] = nil
          firewallm.options['protocol.http.ssl_config.verify_mode'] = nil
          licensem.options['protocol.http.ssl_config.verify_mode'] = nil
          mailer.options['protocol.http.ssl_config.verify_mode'] = nil
          op_log.options['protocol.http.ssl_config.verify_mode'] = nil
          perf_mon.options['protocol.http.ssl_config.verify_mode'] = nil
          res_log.options['protocol.http.ssl_config.verify_mode'] = nil
          resourcem.options['protocol.http.ssl_config.verify_mode'] = nil
          scheduler.options['protocol.http.ssl_config.verify_mode'] = nil
          servicem.options['protocol.http.ssl_config.verify_mode'] = nil
          userm.options['protocol.http.ssl_config.verify_mode'] = nil
        end
      end
  
      ##
      # Sets the wiredump device for all drivers.
      def setup_debug_mode(dev)
        if dev == true
          dev = STDERR
        end
        
        sessionm.wiredump_dev = dev
        envm.wiredump_dev = dev
        packagem.wiredump_dev = dev
        relocator.wiredump_dev = dev
        devm.wiredump_dev = dev
        networkm.wiredump_dev = dev
        proc_info.wiredump_dev = dev
        processm.wiredump_dev = dev
        up2date.wiredump_dev = dev
        support.wiredump_dev = dev
        env_samplem.wiredump_dev = dev
        alertm.wiredump_dev = dev
        authm.wiredump_dev = dev
        backupm.wiredump_dev = dev
        computerm.wiredump_dev = dev
        event_log.wiredump_dev = dev
        server_group.wiredump_dev = dev
        filer.wiredump_dev = dev
        firewallm.wiredump_dev = dev
        licensem.wiredump_dev = dev
        mailer.wiredump_dev = dev
        op_log.wiredump_dev = dev
        perf_mon.wiredump_dev = dev
        res_log.wiredump_dev = dev
        resourcem.wiredump_dev = dev
        scheduler.wiredump_dev = dev
        servicem.wiredump_dev = dev
        userm.wiredump_dev = dev
      end

      ##
      # Performs the actual session authentication and storage of the
      # +session_id+ value.
      #
      def establish_session
        login_opts = {
          :name => Base64.encode64(@username).gsub("\n",''),
          :password => Base64.encode64(@password).gsub("\n",''),
          :realm => @realm
        }

        resp = sessionm.login(login_opts)

        @session_id = resp.session_id || nil
      end

      ##
      # Sets up handling of the SOAP envelope header for all outbound messages
      # given the established session_id and sets the appropriate target for
      # each driver in turn.
      #
      def setup_header_handler
        sessionm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'sessionm')
        envm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzaenvm')
        packagem.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzapackagem')
        relocator.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzarelocator')
        devm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzadevm')
        networkm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzanetworkm')
        proc_info.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzaproc_info')
        processm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzaprocessm')
        up2date.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzaup2date')
        support.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'vzasupport')
        env_samplem.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'env_samplem')
        alertm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'alertm')
        authm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'authm')
        backupm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'backupm')
        computerm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'computerm')
        event_log.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'event_log')
        server_group.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'server_group')
        filer.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'filer')
        firewallm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'firewallm')
        licensem.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'licensem')
        mailer.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'mailer')
        op_log.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'op_log')
        perf_mon.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'perf_mon')
        res_log.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'res_log')
        resourcem.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'resourcem')
        scheduler.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'scheduler')
        servicem.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'servicem')
        userm.headerhandler << HeaderHandler.new(:session => @session_id, :target => 'userm')
      end
    end
  end
end
