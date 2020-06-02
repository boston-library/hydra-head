source "https://rubygems.org"

# Specify gem dependencies in hydra-head.gemspec
gemspec

group :development, :test do
  gem 'simplecov', :platform => :mri_19
  gem 'simplecov-rcov', :platform => :mri_19
end

path = File.expand_path('../hydra-core/spec/test_app_templates/Gemfile.extra', __FILE__)
if File.exists?(path)
  eval File.read(path), nil, path 
end
