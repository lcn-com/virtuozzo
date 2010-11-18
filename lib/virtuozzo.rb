require 'base64'
require 'rubygems'

gem 'soap4r'

__DIR__ = File.dirname(__FILE__)

$LOAD_PATH.unshift __DIR__ unless
  $LOAD_PATH.include?(__DIR__) ||
  $LOAD_PATH.include?(File.expand_path(__DIR__))

require 'virtuozzo/constants'
require 'virtuozzo/soap'