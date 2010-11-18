require 'rubygems'
require 'yard'

namespace :yard do
  YARD::Rake::YardocTask.new(:docs) do |t|
    t.files = [
        'lib/*.rb',
        'lib/virtuozzo/*.rb',
        'lib/virtuozzo/soap/*.rb',
        'lib/virtuozzo/soap/drivers/*.rb'
      ]
    t.options = [
        '--readme', 'README.rdoc'
      ]
  end
  
  desc "Publish YARD documentation."
  task :publish => [:docs] do
    local_dir = 'doc'
    remote_dir_name = "#{RUBYFORGE_PROJECT}/#{PROJECT}"

    config = YAML.load(File.read(File.expand_path("~/.rubyforge/user-config.yml")))
    pub = Rake::SshDirPublisher.new "#{config["username"]}@rubyforge.org", "/var/www/gforge-projects/#{remote_dir_name}", local_dir
      
    def pub.upload
      begin
        super
      rescue
        # project directory probably doesn't exist, transfer as a whole
        cmd = "scp -qr #{local_dir} #{host}:#{remote_dir}"
        puts "Uploading: #{cmd}"
        system(cmd)
      end
    end

    pub.upload
  end
end