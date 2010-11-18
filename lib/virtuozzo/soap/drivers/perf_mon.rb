require 'virtuozzo/soap/types/perf_mon'
require 'virtuozzo/soap/mapping_registries/perf_mon'
require 'soap/rpc/driver'

module Virtuozzo
  module SOAP
    module Drivers

      class PerfMon < ::SOAP::RPC::Driver
        DefaultEndpointUrl = "https://localhost:4646"

        Methods = [
          [ nil,
            "start_monitor",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "start_monitor"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "start_monitorResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "stop_monitor",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "stop_monitor"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "stop_monitorResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "get"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/perf_mon", "getResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = Virtuozzo::SOAP::MappingRegistries::PerfMon::EncodedRegistry
          self.literal_mapping_registry = Virtuozzo::SOAP::MappingRegistries::PerfMon::LiteralRegistry
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