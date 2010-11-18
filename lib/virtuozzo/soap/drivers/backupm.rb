require 'virtuozzo/soap/types/backupm'
require 'virtuozzo/soap/mapping_registries/backupm'
require 'soap/rpc/driver'

module Virtuozzo
  module SOAP
    module Drivers

      class Backupm < ::SOAP::RPC::Driver
        DefaultEndpointUrl = "https://localhost:4646"

        Methods = [
          [ nil,
            "backup_env",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "backup_env"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "backup_envResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "list",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "list"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "listResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "search",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "search"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "searchResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_info",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "get_info"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "get_infoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "set_config",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "set_config"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "set_configResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_config",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "get_config"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "get_configResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "restore_env",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "restore_env"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/backupm", "restore_envResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = Virtuozzo::SOAP::MappingRegistries::Backupm::EncodedRegistry
          self.literal_mapping_registry = Virtuozzo::SOAP::MappingRegistries::Backupm::LiteralRegistry
          init_methods
        end

      private

        def init_methods
          Methods.each do |definitions|
            opt = definitions.last
            
            # set options to use default namespace instead of using n[#]
            opt.merge!({
              :use_default_namespace => true
            })
            
            if opt[:request_style] == :document
              add_document_operation(*definitions)
            else
              add_rpc_operation(*definitions)
              qname = definitions[0]
              name = definitions[2]
              if qname.name != name and qname.name.capitalize == name.capitalize
                ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
                  __send__(name, *arg)
                end
              end
            end
          end
        end
      end

    end
  end
end