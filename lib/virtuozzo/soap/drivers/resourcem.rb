require 'virtuozzo/soap/types/resourcem'
require 'virtuozzo/soap/mapping_registries/resourcem'
require 'soap/rpc/driver'

module Virtuozzo
  module SOAP
    module Drivers

      class Resourcem < ::SOAP::RPC::Driver
        DefaultEndpointUrl = "https://localhost:4646"

        Methods = [
          [ nil,
            "allocate",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "allocate"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "allocateResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "release",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "release"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "releaseResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "set_pool",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "set_pool"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "set_poolResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "get_pool",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "get_pool"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "get_poolResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "add_resource",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "add_resource"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "add_resourceResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ nil,
            "remove_resource",
            [ ["in", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "remove_resource"]],
              ["out", "parameter", ["::SOAP::SOAPElement", "http://www.swsoft.com/webservices/vzl/4.0.0/resourcem", "remove_resourceResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = Virtuozzo::SOAP::MappingRegistries::Resourcem::EncodedRegistry
          self.literal_mapping_registry = Virtuozzo::SOAP::MappingRegistries::Resourcem::LiteralRegistry
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