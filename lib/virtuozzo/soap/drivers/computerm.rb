require 'virtuozzo/soap/types/computerm'
require 'virtuozzo/soap/mapping_registries/computerm'
require 'soap/rpc/driver'

module Virtuozzo
  module SOAP
    module Drivers

      class Computerm < ::SOAP::RPC::Driver
        DefaultEndpointUrl = "https://localhost:4646"

        Methods = [
          [ nil,
            "get_disk",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_disk"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_diskResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_system",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_system"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_systemResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_network",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_network"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_networkResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "reboot",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "reboot"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "rebootResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_date",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_date"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_dateResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "set_date",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "set_date"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "set_dateResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_zones_info",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_zones_info"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/computerm", "get_zones_infoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = Virtuozzo::SOAP::MappingRegistries::Computerm::EncodedRegistry
          self.literal_mapping_registry = Virtuozzo::SOAP::MappingRegistries::Computerm::LiteralRegistry
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