# -*- encoding: utf-8 -*-
# stub: hydra-access-controls 8.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hydra-access-controls".freeze
  s.version = "8.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Beer".freeze, "Justin Coyne".freeze, "Matt Zumwalt".freeze]
  s.date = "2020-04-14"
  s.description = "Access controls for project hydra".freeze
  s.email = ["hydra-tech@googlegroups.com".freeze]
  s.files = [".rspec".freeze, "README.textile".freeze, "Rakefile".freeze, "app/models/ability.rb".freeze, "app/models/concerns/hydra/access_controls.rb".freeze, "app/models/concerns/hydra/access_controls/access_right.rb".freeze, "app/models/concerns/hydra/access_controls/embargoable.rb".freeze, "app/models/concerns/hydra/access_controls/permissions.rb".freeze, "app/models/concerns/hydra/access_controls/visibility.rb".freeze, "app/models/concerns/hydra/access_controls/with_access_right.rb".freeze, "app/models/concerns/hydra/admin_policy_behavior.rb".freeze, "app/models/role_mapper.rb".freeze, "app/services/hydra/embargo_service.rb".freeze, "app/services/hydra/lease_service.rb".freeze, "app/validators/hydra/future_date_validator.rb".freeze, "config/fedora.yml".freeze, "config/locales/hydra-access-controls.en.yml".freeze, "config/solr.yml".freeze, "hydra-access-controls.gemspec".freeze, "lib/active_fedora/accessible_by.rb".freeze, "lib/hydra-access-controls.rb".freeze, "lib/hydra/ability.rb".freeze, "lib/hydra/access_controls/permission.rb".freeze, "lib/hydra/access_controls_enforcement.rb".freeze, "lib/hydra/admin_policy.rb".freeze, "lib/hydra/config.rb".freeze, "lib/hydra/datastream.rb".freeze, "lib/hydra/datastream/inheritable_rights_metadata.rb".freeze, "lib/hydra/datastream/rights_metadata.rb".freeze, "lib/hydra/permissions_cache.rb".freeze, "lib/hydra/permissions_query.rb".freeze, "lib/hydra/permissions_solr_document.rb".freeze, "lib/hydra/policy_aware_ability.rb".freeze, "lib/hydra/policy_aware_access_controls_enforcement.rb".freeze, "lib/hydra/role_mapper_behavior.rb".freeze, "lib/hydra/user.rb".freeze, "spec/factories.rb".freeze, "spec/services/embargo_service_spec.rb".freeze, "spec/services/lease_service_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/config/role_map.yml".freeze, "spec/support/config/solr.yml".freeze, "spec/support/mods_asset.rb".freeze, "spec/support/rails.rb".freeze, "spec/support/solr_document.rb".freeze, "spec/support/user.rb".freeze, "spec/unit/ability_spec.rb".freeze, "spec/unit/access_controls_enforcement_spec.rb".freeze, "spec/unit/access_right_spec.rb".freeze, "spec/unit/accessible_by_spec.rb".freeze, "spec/unit/admin_policy_spec.rb".freeze, "spec/unit/config_spec.rb".freeze, "spec/unit/embargoable_spec.rb".freeze, "spec/unit/hydra_rights_metadata_persistence_spec.rb".freeze, "spec/unit/hydra_rights_metadata_spec.rb".freeze, "spec/unit/inheritable_rights_metadata_spec.rb".freeze, "spec/unit/permission_spec.rb".freeze, "spec/unit/permissions_spec.rb".freeze, "spec/unit/policy_aware_ability_spec.rb".freeze, "spec/unit/policy_aware_access_controls_enforcement_spec.rb".freeze, "spec/unit/role_mapper_spec.rb".freeze, "spec/unit/visibility_spec.rb".freeze, "spec/unit/with_access_right_spec.rb".freeze, "spec/validators/future_date_validator_spec.rb".freeze, "tasks/hydra-access-controls.rake".freeze]
  s.homepage = "http://projecthydra.org".freeze
  s.licenses = ["APACHE2".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Access controls for project hydra".freeze
  s.test_files = ["spec/factories.rb".freeze, "spec/services/embargo_service_spec.rb".freeze, "spec/services/lease_service_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/config/role_map.yml".freeze, "spec/support/config/solr.yml".freeze, "spec/support/mods_asset.rb".freeze, "spec/support/rails.rb".freeze, "spec/support/solr_document.rb".freeze, "spec/support/user.rb".freeze, "spec/unit/ability_spec.rb".freeze, "spec/unit/access_controls_enforcement_spec.rb".freeze, "spec/unit/access_right_spec.rb".freeze, "spec/unit/accessible_by_spec.rb".freeze, "spec/unit/admin_policy_spec.rb".freeze, "spec/unit/config_spec.rb".freeze, "spec/unit/embargoable_spec.rb".freeze, "spec/unit/hydra_rights_metadata_persistence_spec.rb".freeze, "spec/unit/hydra_rights_metadata_spec.rb".freeze, "spec/unit/inheritable_rights_metadata_spec.rb".freeze, "spec/unit/permission_spec.rb".freeze, "spec/unit/permissions_spec.rb".freeze, "spec/unit/policy_aware_ability_spec.rb".freeze, "spec/unit/policy_aware_access_controls_enforcement_spec.rb".freeze, "spec/unit/role_mapper_spec.rb".freeze, "spec/unit/visibility_spec.rb".freeze, "spec/unit/with_access_right_spec.rb".freeze, "spec/validators/future_date_validator_spec.rb".freeze]

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0", "< 6"])
      s.add_runtime_dependency(%q<active-fedora>.freeze, ["~> 8.0"])
      s.add_runtime_dependency(%q<om>.freeze, ["~> 3.0", ">= 3.0.7"])
      s.add_runtime_dependency(%q<cancancan>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<deprecation>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<blacklight>.freeze, ["~> 5.10"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 4.0", "< 6"])
      s.add_dependency(%q<active-fedora>.freeze, ["~> 8.0"])
      s.add_dependency(%q<om>.freeze, ["~> 3.0", ">= 3.0.7"])
      s.add_dependency(%q<cancancan>.freeze, ["~> 1.8"])
      s.add_dependency(%q<deprecation>.freeze, ["~> 0.1"])
      s.add_dependency(%q<blacklight>.freeze, ["~> 5.10"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0", "< 6"])
    s.add_dependency(%q<active-fedora>.freeze, ["~> 8.0"])
    s.add_dependency(%q<om>.freeze, ["~> 3.0", ">= 3.0.7"])
    s.add_dependency(%q<cancancan>.freeze, ["~> 1.8"])
    s.add_dependency(%q<deprecation>.freeze, ["~> 0.1"])
    s.add_dependency(%q<blacklight>.freeze, ["~> 5.10"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
