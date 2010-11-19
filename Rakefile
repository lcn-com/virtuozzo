require 'rubygems'
require 'echoe'

PROJECT = "virtuozzo"
RUBYFORGE_PROJECT = "virtuozzo"

Echoe.new(PROJECT, '0.7.0') do |p|
  p.description               = "Ruby library for Parallels Virtuozzo Agent's API"
  p.url                       = "http://github.com/lcn-com/virtuozzo"
  p.author                    = "LCN.com"
  p.email                     = "dev@advantage-interactive.com"
  p.project                   = RUBYFORGE_PROJECT
  p.ignore_pattern            = ["tmp/**/*", "script/**/*", "spec/**/*"]
  p.development_dependencies  = ["echoe ~>3.0"]
  p.runtime_dependencies      = ["soap4r ~>1.5"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
