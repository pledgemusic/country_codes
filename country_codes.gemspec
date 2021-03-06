# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: country_codes 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "country_codes"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Zachary Powell"]
  s.date = "2015-10-02"
  s.email = "zach@babelian.net"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".DS_Store",
    ".rspec",
    ".rubocop.yml",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION.yml",
    "country_codes.gemspec",
    "lib/.DS_Store",
    "lib/country.rb",
    "lib/country_codes.rb",
    "lib/postcode_validators/.DS_Store",
    "lib/postcode_validators/be_postcode_validator.rb",
    "lib/postcode_validators/ca_postcode_validator.rb",
    "lib/postcode_validators/de_postcode_validator.rb",
    "lib/postcode_validators/gb_postcode_validator.rb",
    "lib/postcode_validators/jp_postcode_validator.rb",
    "lib/postcode_validators/nl_postcode_validator.rb",
    "lib/postcode_validators/postcode_validator.rb",
    "lib/postcode_validators/us_postcode_validator.rb",
    "spec/country_spec.rb",
    "spec/postcode_validator_spec.rb",
    "spec/spec_helper.rb",
    "spec/suite.rb"
  ]
  s.homepage = "http://github.com/pledgemusic/country_codes"
  s.rubygems_version = "2.2.2"
  s.summary = "Country and Postcode information"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["= 3.0.0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["= 3.0.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["= 3.0.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

