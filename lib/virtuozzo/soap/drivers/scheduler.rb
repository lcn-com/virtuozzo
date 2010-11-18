require 'virtuozzo/soap/types/scheduler'
require 'virtuozzo/soap/mapping_registries/scheduler'
require 'soap/rpc/driver'

module Virtuozzo
  module SOAP
    module Drivers

      class Scheduler < ::SOAP::RPC::Driver
        DefaultEndpointUrl = "https://localhost:4646"

        Methods = [
          [ nil,
            "add",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "add"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "addResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "remove",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "remove"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "removeResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "list",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "list"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "listResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "update",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "update"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/scheduler", "updateResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = Virtuozzo::SOAP::MappingRegistries::Scheduler::EncodedRegistry
          self.literal_mapping_registry = Virtuozzo::SOAP::MappingRegistries::Scheduler::LiteralRegistry
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