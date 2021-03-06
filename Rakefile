require 'rake/testtask'
require 'bundler'
Bundler::GemHelper.install_tasks

APP_ROOT= File.dirname(__FILE__)
require 'jettywrapper'

namespace :jetty do
  TEMPLATE_DIR = 'hydra-core/lib/generators/hydra/templates'
  SOLR_DIR = "#{TEMPLATE_DIR}/solr_conf/conf"
  FEDORA_DIR = "#{TEMPLATE_DIR}/fedora_conf/conf"

  desc "Config Jetty"
  task :config do
    Rake::Task["jetty:reset"].reenable
    Rake::Task["jetty:reset"].invoke
    Rake::Task["jetty:config_fedora"].reenable
    Rake::Task["jetty:config_fedora"].invoke
    Rake::Task["jetty:config_solr"].reenable
    Rake::Task["jetty:config_solr"].invoke
  end
  
  desc "Copies the default SOLR config for the bundled Hydra Testing Server"
  task :config_solr do
    FileList["#{SOLR_DIR}/*"].each do |f|  
      cp("#{f}", 'jetty/solr/development-core/conf/', :verbose => true)
      cp("#{f}", 'jetty/solr/test-core/conf/', :verbose => true)
    end

  end

  desc "Copies a custom fedora config for the bundled Hydra Testing Server"
  task :config_fedora do
    # load a custom fedora.fcfg - 
    if defined?(Rails.root)
      app_root = Rails.root
    else
      app_root = File.join(File.dirname(__FILE__),"..")
    end
     
    fcfg = File.join(FEDORA_DIR,"development","fedora.fcfg")
    if File.exists?(fcfg)
      puts "copying over development/fedora.fcfg"
      cp("#{fcfg}", 'jetty/fedora/default/server/config/', :verbose => true)
    else
      puts "#{fcfg} file not found -- skipping fedora config"
    end
    fcfg = File.join(FEDORA_DIR,"test","fedora.fcfg")
    if File.exists?(fcfg)
      puts "copying over test/fedora.fcfg"
      cp("#{fcfg}", 'jetty/fedora/test/server/config/', :verbose => true)
    else
      puts "#{fcfg} file not found -- skipping fedora config"
    end
  end

  desc "Copies the default SOLR config files and starts up the fedora instance."
  task :load => [:config, 'jetty:start']

  desc "return development jetty to its pristine state, as pulled from git"
  task :reset => ['jetty:stop'] do
    system("cd jetty && git reset --hard HEAD && git clean -dfx && cd ..")
    sleep 2
  end
end

desc "Run Continuous Integration"
task :ci => ['jetty:reset', 'jetty:config'] do
  jetty_params = Jettywrapper.load_config
  error = nil
  error = Jettywrapper.wrap(jetty_params) do
    Rake::Task['spec'].invoke
  end
  raise "test failures: #{error}" if error

  Rake::Task["doc"].invoke
  

end

FRAMEWORKS = ['hydra-access-controls', 'hydra-core', 'hydra-file-access']

root    = File.expand_path('../', __FILE__)
version = File.read("#{root}/HYDRA_VERSION").strip
tag     = "v#{version}"

(FRAMEWORKS  + ['hydra-head']).each do |framework|
  namespace framework do
    gem     = "pkg/#{framework}-#{version}.gem"
    gemspec = "#{framework}.gemspec"

    task :clean do
      rm_f gem
    end

    task :update_version_rb do
      glob = root.dup
      glob << "/#{framework}/lib/*" unless framework == "hydra-head"
      glob << "/version.rb"

      file = Dir[glob].first
      if file
        ruby = File.read(file)

        major, minor, tiny, pre = version.split('.')
        pre = pre ? pre.inspect : "nil"

        ruby.gsub!(/^(\s*)VERSION = ".*?"$/, "\\1VERSION = \"#{version}\"")
        raise "Could not insert VERSION in #{file}" unless $1
        File.open(file, 'w') { |f| f.write ruby }
      end
    end
    task gem => %w(update_version_rb pkg) do
      cmd = ""
      cmd << "cd #{framework} && " unless framework == "hydra-head"
      cmd << "gem build #{gemspec} && mv #{framework}-#{version}.gem #{root}/pkg/"
      sh cmd
    end

    task :build => [:clean, gem]
    task :install => :build do
      sh "gem install #{gem}"
    end

    task :prep_release => [:ensure_clean_state, :build]

    task :push => :build do
      sh "gem push #{gem}"
    end
  end
end


namespace :all do
  task :build   => FRAMEWORKS.map { |f| "#{f}:build"   } + ['hydra-head:build']
  task :install => FRAMEWORKS.map { |f| "#{f}:install" } + ['hydra-head:install']
  task :push    => FRAMEWORKS.map { |f| "#{f}:push"    } + ['hydra-head:push']

  task :ensure_clean_state do
    unless `git status -s | grep -v RAILS_VERSION`.strip.empty?
      abort "[ABORTING] `git status` reports a dirty tree. Make sure all changes are committed"
    end

    unless ENV['SKIP_TAG'] || `git tag | grep #{tag}`.strip.empty?
      abort "[ABORTING] `git tag` shows that #{tag} already exists. Has this version already\n"\
            "           been released? Git tagging can be skipped by setting SKIP_TAG=1"
    end
  end

  task :commit do
    File.open('pkg/commit_message.txt', 'w') do |f|
      f.puts "# Preparing for #{version} release\n"
      f.puts
      f.puts "# UNCOMMENT THE LINE ABOVE TO APPROVE THIS COMMIT"
    end

    sh "git add . && git commit --verbose --template=pkg/commit_message.txt"
    rm_f "pkg/commit_message.txt"
  end

  task :tag do
    sh "git tag #{tag}"
    sh "git push --tags"
  end

  task :release => %w(ensure_clean_state build commit tag push)
end



task :spec do
  raise "test failures" unless all_modules('rake spec')
end
task :clean do
  raise "test failures" unless all_modules('rake clean')
end

def all_modules(cmd)
  FRAMEWORKS.each do |dir|
    Dir.chdir(dir) do
      puts "\n\e[1;33m[Hydra CI] #{dir}\e[m\n"
      #cmd = "bundle exec rake spec" # doesn't work because it doesn't require the gems specified in the Gemfiles of the test rails apps 
      return false unless system(cmd)
    end
  end
end

begin
  require 'yard'
  require 'yard/rake/yardoc_task'
  project_root = File.expand_path(".")
  doc_destination = File.join(project_root, 'doc')
  if !File.exists?(doc_destination) 
    FileUtils.mkdir_p(doc_destination)
  end

  YARD::Rake::YardocTask.new(:doc) do |yt|
    yt.files   = ['*/lib/**/*.rb', project_root+"*", '*/app/**/*.rb']

    yt.options << "-m" << "textile"
    yt.options << "--protected"
    yt.options << "--no-private"
    yt.options << "-r" << "README.textile"
    yt.options << "-o" << "doc"
    yt.options << "--files" << "*.textile"
  end
rescue LoadError
  desc "Generate YARD Documentation"
  task :doc do
    abort "Please install the YARD gem to generate rdoc."
  end
end
