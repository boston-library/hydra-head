# -*- encoding: utf-8 -*-
# stub: hydra-core 8.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-core".freeze
  s.version = "8.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matt Zumwalt, Bess Sadler, Julie Meloni, Naomi Dushay, Jessie Keck, John Scofield, Justin Coyne & many more.  See https://github.com/projecthydra/hydra-head/contributors".freeze]
  s.date = "2020-04-14"
  s.description = "Hydra-Head is a Rails Engine containing the core code for a Hydra application. The full hydra stack includes: Blacklight, Fedora, Solr, active-fedora, solrizer, and om".freeze
  s.email = ["hydra-tech@googlegroups.com".freeze]
  s.files = [".gitignore".freeze, "Rakefile".freeze, "app/controllers/concerns/hydra/controller.rb".freeze, "app/controllers/concerns/hydra/controller/controller_behavior.rb".freeze, "app/controllers/concerns/hydra/controller/download_behavior.rb".freeze, "app/helpers/blacklight_helper.rb".freeze, "app/helpers/hydra/blacklight_helper_behavior.rb".freeze, "app/models/concerns/hydra/model_methods.rb".freeze, "app/models/concerns/hydra/models.rb".freeze, "app/models/concerns/hydra/solr.rb".freeze, "app/models/hydra/datastream/properties.rb".freeze, "app/models/mods_asset.rb".freeze, "app/search_builders/hydra/search_builder.rb".freeze, "config/jetty.yml".freeze, "config/locales/hydra.en.yml".freeze, "hydra-core.gemspec".freeze, "lib/application_helper.rb".freeze, "lib/generators/hydra/head_generator.rb".freeze, "lib/generators/hydra/hyhead_fixtures_generator.rb".freeze, "lib/generators/hydra/jetty_generator.rb".freeze, "lib/generators/hydra/templates/ability.rb".freeze, "lib/generators/hydra/templates/catalog_controller.rb".freeze, "lib/generators/hydra/templates/config/blacklight.yml".freeze, "lib/generators/hydra/templates/config/initializers/hydra_config.rb".freeze, "lib/generators/hydra/templates/config/role_map.yml".freeze, "lib/hydra-core.rb".freeze, "lib/hydra-head/engine.rb".freeze, "lib/hydra-head/version.rb".freeze, "lib/railties/active-fedora.rake".freeze, "lib/railties/hydra-fixtures.rake".freeze, "lib/railties/hydra_jetty.rake".freeze, "spec/.gitignore".freeze, "spec/controllers/catalog_controller_spec.rb".freeze, "spec/controllers/downloads_controller_spec.rb".freeze, "spec/factories.rb".freeze, "spec/helpers/blacklight_helper_spec.rb".freeze, "spec/lib/model_methods_spec.rb".freeze, "spec/models/mods_asset_spec.rb".freeze, "spec/models/solr_document_spec.rb".freeze, "spec/models/user_spec.rb".freeze, "spec/rcov.opts".freeze, "spec/search_builders/search_builder_spec.rb".freeze, "spec/spec.opts".freeze, "spec/spec_helper.rb".freeze, "spec/support/app/controllers/downloads_controller.rb".freeze, "spec/support/app/models/generic_content.rb".freeze, "spec/support/app/models/sample.rb".freeze, "spec/support/app/models/solr_document.rb".freeze, "spec/support/db/migrate/20111101221803_create_searches.rb".freeze, "spec/support/lib/generators/test_app_generator.rb".freeze, "spec/support/lib/tasks/rspec.rake".freeze, "spec/support/matchers/helper_matcher.rb".freeze, "spec/support/matchers/solr_matchers.rb".freeze, "spec/support/spec/fixtures/hydra_test_generic_content.foxml.xml".freeze, "spec/support/spec/fixtures/hydrangea_fixture_mods_article1.foxml.xml".freeze, "spec/test_app_templates/Gemfile.extra".freeze, "spec/unit/hydra-head-engine_spec.rb".freeze, "spec/unit/hydra-head_spec.rb".freeze, "tasks/hydra-head-fixtures.rake".freeze, "tasks/hydra_jetty.rake".freeze, "tasks/rspec.rake".freeze]
  s.homepage = "http://projecthydra.org".freeze
  s.licenses = ["APACHE2".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Hydra-Head Rails Engine (requires Rails3)".freeze
  s.test_files = ["spec/.gitignore".freeze, "spec/controllers/catalog_controller_spec.rb".freeze, "spec/controllers/downloads_controller_spec.rb".freeze, "spec/factories.rb".freeze, "spec/helpers/blacklight_helper_spec.rb".freeze, "spec/lib/model_methods_spec.rb".freeze, "spec/models/mods_asset_spec.rb".freeze, "spec/models/solr_document_spec.rb".freeze, "spec/models/user_spec.rb".freeze, "spec/rcov.opts".freeze, "spec/search_builders/search_builder_spec.rb".freeze, "spec/spec.opts".freeze, "spec/spec_helper.rb".freeze, "spec/support/app/controllers/downloads_controller.rb".freeze, "spec/support/app/models/generic_content.rb".freeze, "spec/support/app/models/sample.rb".freeze, "spec/support/app/models/solr_document.rb".freeze, "spec/support/db/migrate/20111101221803_create_searches.rb".freeze, "spec/support/lib/generators/test_app_generator.rb".freeze, "spec/support/lib/tasks/rspec.rake".freeze, "spec/support/matchers/helper_matcher.rb".freeze, "spec/support/matchers/solr_matchers.rb".freeze, "spec/support/spec/fixtures/hydra_test_generic_content.foxml.xml".freeze, "spec/support/spec/fixtures/hydrangea_fixture_mods_article1.foxml.xml".freeze, "spec/test_app_templates/Gemfile.extra".freeze, "spec/unit/hydra-head-engine_spec.rb".freeze, "spec/unit/hydra-head_spec.rb".freeze]

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0", "< 6"])
      s.add_runtime_dependency(%q<block_helpers>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<hydra-access-controls>.freeze, ["= 8.2.0"])
      s.add_runtime_dependency(%q<jettywrapper>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.0", "< 6"])
      s.add_dependency(%q<block_helpers>.freeze, [">= 0"])
      s.add_dependency(%q<hydra-access-controls>.freeze, ["= 8.2.0"])
      s.add_dependency(%q<jettywrapper>.freeze, ["~> 1.5"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.0", "< 6"])
    s.add_dependency(%q<block_helpers>.freeze, [">= 0"])
    s.add_dependency(%q<hydra-access-controls>.freeze, ["= 8.2.0"])
    s.add_dependency(%q<jettywrapper>.freeze, ["~> 1.5"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
  end
end
