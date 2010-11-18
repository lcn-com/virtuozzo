require 'soap/header/simplehandler'

module Virtuozzo
  module SOAP
    ##
    # The HeaderHandler class takes care of properly formatting the
    # packet_header element inside a SOAP envelope header are. This
    # implementation will properly marshal all attributes and elements
    # for the packet_header element according to the Virtuozzo SOAP
    # API specification.
    #
    class HeaderHandler < ::SOAP::Header::SimpleHandler
      NAMESPACE = 'http://www.swsoft.com/webservices/vzl/4.0.0/soap_protocol'

      ##
      # Accepts a number of options that will inform the values assigned to the
      # attributes and elements of the packet_header element.
      #
      # == opts options
      #
      # === Attributes
      #
      # * :id represents a unique identifier for a given message. The
      #   response will include this token for identification.
      # * :priority tells the agent to process the message with the given
      #   priority.
      # * :time represents the time and date the message was sent.
      # * :progress tells the agent to enable progress monitoring.
      # * :log tells the agent log the activities related to this message.
      # * :timeout tells the agent to stop processing the message after the
      #   supplied interval of time.
      #
      # === Elements
      #
      # * :session tells the agent which authenticated session this message
      #   should be processed in the context of.
      # * :target tells the agent which operator should handle this message.
      # * :cookie represents a unique token that will be retruned with the
      #   response message as a means of identification.
      # * :dst tells the agent to forward this message to another destination
      #   for final processing.
      #
      # @param [Hash] opts values for packet_header attributes and elements.
      #
      def initialize(opts = {})
        @elem_options = {
          :session => opts[:session] || nil,
          :target => opts[:target] || nil,
          :cookie => opts[:cookie] || nil,
          :dst => opts[:dst] || nil,
        }

        @attr_options = {
          :id => opts[:id] || nil,
          :priority => opts[:priority] || nil,
          :time => opts[:time] || nil,
          :progress => opts[:progress] || nil,
          :log => opts[:log] || nil,
          :timeout => opts[:timeout] || nil
        }

        super(XSD::QName.new(NAMESPACE, 'packet_header'))

        @session_elem = XSD::QName.new(NAMESPACE, 'session')
        @target_elem = XSD::QName.new(NAMESPACE, 'target')
        @cookie_elem = XSD::QName.new(NAMESPACE, 'cookie')
        @dst_elem = XSD::QName.new(NAMESPACE, 'dst')
        @dst_host_elem = XSD::QName.new(NAMESPACE, 'host')
      end

      def on_simple_outbound
        hdr = {}

        hdr.merge!({'xmlattr_version' => Virtuozzo::PROTOCOL_VERSION})
        hdr.merge!({'xmlattr_id' => @attr_options[:id].to_s}) unless @attr_options[:id].nil?
        hdr.merge!({'xmlattr_priority' => @attr_options[:priority].to_s}) unless @attr_options[:priority].nil?
        hdr.merge!({'xmlattr_time' => @attr_options[:time].to_s}) unless @attr_options[:time].nil?
        hdr.merge!({'xmlattr_progress' => "on"}) unless @attr_options[:progress].nil?
        hdr.merge!({'xmlattr_log' => "on"}) unless @attr_options[:log].nil?
        hdr.merge!({'xmlattr_timeout' => @attr_options[:timeout].to_s}) unless @attr_options[:timeout].nil?

        hdr.merge!({@session_elem => @elem_options[:session]}) unless @elem_options[:session].nil?
        hdr.merge!({@target_elem => @elem_options[:target]}) unless @elem_options[:target].nil? || @elem_options[:target] == 'system'
        hdr.merge!({@cookie_elem => @elem_options[:cookie]}) unless @elem_options[:cookie].nil?
        hdr.merge!({@dst_elem => {@dst_host_elem => @elem_options[:dst]}}) unless @elem_options[:dst].nil?

        return hdr
      end
    end
  end
end