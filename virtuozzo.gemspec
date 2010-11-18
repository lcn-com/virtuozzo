# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{virtuozzo}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Thompson"]
  s.date = %q{2008-11-21}
  s.description = %q{Ruby library for Parallels Virtuozzo Agent's API}
  s.email = %q{james@plainprograms.com}
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "lib/virtuozzo/constants.rb", "lib/virtuozzo/soap/drivers/alertm.rb", "lib/virtuozzo/soap/drivers/authm.rb", "lib/virtuozzo/soap/drivers/backupm.rb", "lib/virtuozzo/soap/drivers/computerm.rb", "lib/virtuozzo/soap/drivers/devm.rb", "lib/virtuozzo/soap/drivers/env_samplem.rb", "lib/virtuozzo/soap/drivers/envm.rb", "lib/virtuozzo/soap/drivers/event_log.rb", "lib/virtuozzo/soap/drivers/filer.rb", "lib/virtuozzo/soap/drivers/firewallm.rb", "lib/virtuozzo/soap/drivers/licensem.rb", "lib/virtuozzo/soap/drivers/mailer.rb", "lib/virtuozzo/soap/drivers/networkm.rb", "lib/virtuozzo/soap/drivers/op_log.rb", "lib/virtuozzo/soap/drivers/packagem.rb", "lib/virtuozzo/soap/drivers/perf_mon.rb", "lib/virtuozzo/soap/drivers/proc_info.rb", "lib/virtuozzo/soap/drivers/processm.rb", "lib/virtuozzo/soap/drivers/relocator.rb", "lib/virtuozzo/soap/drivers/res_log.rb", "lib/virtuozzo/soap/drivers/resourcem.rb", "lib/virtuozzo/soap/drivers/scheduler.rb", "lib/virtuozzo/soap/drivers/server_group.rb", "lib/virtuozzo/soap/drivers/servicem.rb", "lib/virtuozzo/soap/drivers/sessionm.rb", "lib/virtuozzo/soap/drivers/support.rb", "lib/virtuozzo/soap/drivers/up2date.rb", "lib/virtuozzo/soap/drivers/userm.rb", "lib/virtuozzo/soap/header_handler.rb", "lib/virtuozzo/soap/mapping_registries/alertm.rb", "lib/virtuozzo/soap/mapping_registries/authm.rb", "lib/virtuozzo/soap/mapping_registries/backupm.rb", "lib/virtuozzo/soap/mapping_registries/computerm.rb", "lib/virtuozzo/soap/mapping_registries/devm.rb", "lib/virtuozzo/soap/mapping_registries/env_samplem.rb", "lib/virtuozzo/soap/mapping_registries/envm.rb", "lib/virtuozzo/soap/mapping_registries/event_log.rb", "lib/virtuozzo/soap/mapping_registries/filer.rb", "lib/virtuozzo/soap/mapping_registries/firewallm.rb", "lib/virtuozzo/soap/mapping_registries/licensem.rb", "lib/virtuozzo/soap/mapping_registries/mailer.rb", "lib/virtuozzo/soap/mapping_registries/networkm.rb", "lib/virtuozzo/soap/mapping_registries/op_log.rb", "lib/virtuozzo/soap/mapping_registries/packagem.rb", "lib/virtuozzo/soap/mapping_registries/perf_mon.rb", "lib/virtuozzo/soap/mapping_registries/proc_info.rb", "lib/virtuozzo/soap/mapping_registries/processm.rb", "lib/virtuozzo/soap/mapping_registries/relocator.rb", "lib/virtuozzo/soap/mapping_registries/res_log.rb", "lib/virtuozzo/soap/mapping_registries/resourcem.rb", "lib/virtuozzo/soap/mapping_registries/scheduler.rb", "lib/virtuozzo/soap/mapping_registries/server_group.rb", "lib/virtuozzo/soap/mapping_registries/servicem.rb", "lib/virtuozzo/soap/mapping_registries/sessionm.rb", "lib/virtuozzo/soap/mapping_registries/support.rb", "lib/virtuozzo/soap/mapping_registries/up2date.rb", "lib/virtuozzo/soap/mapping_registries/userm.rb", "lib/virtuozzo/soap/types/alertm.rb", "lib/virtuozzo/soap/types/authm.rb", "lib/virtuozzo/soap/types/backupm.rb", "lib/virtuozzo/soap/types/computerm.rb", "lib/virtuozzo/soap/types/devm.rb", "lib/virtuozzo/soap/types/env_samplem.rb", "lib/virtuozzo/soap/types/envm.rb", "lib/virtuozzo/soap/types/event_log.rb", "lib/virtuozzo/soap/types/filer.rb", "lib/virtuozzo/soap/types/firewallm.rb", "lib/virtuozzo/soap/types/licensem.rb", "lib/virtuozzo/soap/types/mailer.rb", "lib/virtuozzo/soap/types/networkm.rb", "lib/virtuozzo/soap/types/op_log.rb", "lib/virtuozzo/soap/types/packagem.rb", "lib/virtuozzo/soap/types/perf_mon.rb", "lib/virtuozzo/soap/types/proc_info.rb", "lib/virtuozzo/soap/types/processm.rb", "lib/virtuozzo/soap/types/relocator.rb", "lib/virtuozzo/soap/types/res_log.rb", "lib/virtuozzo/soap/types/resourcem.rb", "lib/virtuozzo/soap/types/scheduler.rb", "lib/virtuozzo/soap/types/server_group.rb", "lib/virtuozzo/soap/types/servicem.rb", "lib/virtuozzo/soap/types/sessionm.rb", "lib/virtuozzo/soap/types/support.rb", "lib/virtuozzo/soap/types/up2date.rb", "lib/virtuozzo/soap/types/userm.rb", "lib/virtuozzo/soap.rb", "lib/virtuozzo.rb", "README.rdoc", "tasks/general.rake", "tasks/rspec.rake", "tasks/yard.rake", "TODO.rdoc"]
  s.files = ["CHANGELOG.rdoc", "lib/virtuozzo/constants.rb", "lib/virtuozzo/soap/drivers/alertm.rb", "lib/virtuozzo/soap/drivers/authm.rb", "lib/virtuozzo/soap/drivers/backupm.rb", "lib/virtuozzo/soap/drivers/computerm.rb", "lib/virtuozzo/soap/drivers/devm.rb", "lib/virtuozzo/soap/drivers/env_samplem.rb", "lib/virtuozzo/soap/drivers/envm.rb", "lib/virtuozzo/soap/drivers/event_log.rb", "lib/virtuozzo/soap/drivers/filer.rb", "lib/virtuozzo/soap/drivers/firewallm.rb", "lib/virtuozzo/soap/drivers/licensem.rb", "lib/virtuozzo/soap/drivers/mailer.rb", "lib/virtuozzo/soap/drivers/networkm.rb", "lib/virtuozzo/soap/drivers/op_log.rb", "lib/virtuozzo/soap/drivers/packagem.rb", "lib/virtuozzo/soap/drivers/perf_mon.rb", "lib/virtuozzo/soap/drivers/proc_info.rb", "lib/virtuozzo/soap/drivers/processm.rb", "lib/virtuozzo/soap/drivers/relocator.rb", "lib/virtuozzo/soap/drivers/res_log.rb", "lib/virtuozzo/soap/drivers/resourcem.rb", "lib/virtuozzo/soap/drivers/scheduler.rb", "lib/virtuozzo/soap/drivers/server_group.rb", "lib/virtuozzo/soap/drivers/servicem.rb", "lib/virtuozzo/soap/drivers/sessionm.rb", "lib/virtuozzo/soap/drivers/support.rb", "lib/virtuozzo/soap/drivers/up2date.rb", "lib/virtuozzo/soap/drivers/userm.rb", "lib/virtuozzo/soap/header_handler.rb", "lib/virtuozzo/soap/mapping_registries/alertm.rb", "lib/virtuozzo/soap/mapping_registries/authm.rb", "lib/virtuozzo/soap/mapping_registries/backupm.rb", "lib/virtuozzo/soap/mapping_registries/computerm.rb", "lib/virtuozzo/soap/mapping_registries/devm.rb", "lib/virtuozzo/soap/mapping_registries/env_samplem.rb", "lib/virtuozzo/soap/mapping_registries/envm.rb", "lib/virtuozzo/soap/mapping_registries/event_log.rb", "lib/virtuozzo/soap/mapping_registries/filer.rb", "lib/virtuozzo/soap/mapping_registries/firewallm.rb", "lib/virtuozzo/soap/mapping_registries/licensem.rb", "lib/virtuozzo/soap/mapping_registries/mailer.rb", "lib/virtuozzo/soap/mapping_registries/networkm.rb", "lib/virtuozzo/soap/mapping_registries/op_log.rb", "lib/virtuozzo/soap/mapping_registries/packagem.rb", "lib/virtuozzo/soap/mapping_registries/perf_mon.rb", "lib/virtuozzo/soap/mapping_registries/proc_info.rb", "lib/virtuozzo/soap/mapping_registries/processm.rb", "lib/virtuozzo/soap/mapping_registries/relocator.rb", "lib/virtuozzo/soap/mapping_registries/res_log.rb", "lib/virtuozzo/soap/mapping_registries/resourcem.rb", "lib/virtuozzo/soap/mapping_registries/scheduler.rb", "lib/virtuozzo/soap/mapping_registries/server_group.rb", "lib/virtuozzo/soap/mapping_registries/servicem.rb", "lib/virtuozzo/soap/mapping_registries/sessionm.rb", "lib/virtuozzo/soap/mapping_registries/support.rb", "lib/virtuozzo/soap/mapping_registries/up2date.rb", "lib/virtuozzo/soap/mapping_registries/userm.rb", "lib/virtuozzo/soap/types/alertm.rb", "lib/virtuozzo/soap/types/authm.rb", "lib/virtuozzo/soap/types/backupm.rb", "lib/virtuozzo/soap/types/computerm.rb", "lib/virtuozzo/soap/types/devm.rb", "lib/virtuozzo/soap/types/env_samplem.rb", "lib/virtuozzo/soap/types/envm.rb", "lib/virtuozzo/soap/types/event_log.rb", "lib/virtuozzo/soap/types/filer.rb", "lib/virtuozzo/soap/types/firewallm.rb", "lib/virtuozzo/soap/types/licensem.rb", "lib/virtuozzo/soap/types/mailer.rb", "lib/virtuozzo/soap/types/networkm.rb", "lib/virtuozzo/soap/types/op_log.rb", "lib/virtuozzo/soap/types/packagem.rb", "lib/virtuozzo/soap/types/perf_mon.rb", "lib/virtuozzo/soap/types/proc_info.rb", "lib/virtuozzo/soap/types/processm.rb", "lib/virtuozzo/soap/types/relocator.rb", "lib/virtuozzo/soap/types/res_log.rb", "lib/virtuozzo/soap/types/resourcem.rb", "lib/virtuozzo/soap/types/scheduler.rb", "lib/virtuozzo/soap/types/server_group.rb", "lib/virtuozzo/soap/types/servicem.rb", "lib/virtuozzo/soap/types/sessionm.rb", "lib/virtuozzo/soap/types/support.rb", "lib/virtuozzo/soap/types/up2date.rb", "lib/virtuozzo/soap/types/userm.rb", "lib/virtuozzo/soap.rb", "lib/virtuozzo.rb", "Manifest", "Rakefile", "README.rdoc", "tasks/general.rake", "tasks/rspec.rake", "tasks/yard.rake", "TODO.rdoc", "virtuozzo.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/plainprograms/virtuozzo}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Virtuozzo", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{virtuozzo}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby library for Parallels Virtuozzo Agent's API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, ["~> 1.5"])
      s.add_development_dependency(%q<echoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<soap4r>, ["~> 1.5"])
      s.add_dependency(%q<echoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<soap4r>, ["~> 1.5"])
    s.add_dependency(%q<echoe>, ["~> 3.0"])
  end
end
