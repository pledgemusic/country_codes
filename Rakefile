require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'country_codes'
    gem.summary = 'Country and Postcode information'
    gem.email = 'zach@babelian.net'
    gem.homepage = 'http://github.com/pledgemusic/country_codes'
    gem.authors = ['Zachary Powell']
  end
rescue LoadError
  puts 'Jeweler not available. Install it with: gem install jeweler'
end

require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'ruby_exensions'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rspec/core/rake_task'
# RSpec::Core::RakeTask.new(:spec) do |spec|
#   rspec.libs << 'lib' << 'spec'
#   spec.spec_files = FileList['spec/**/*_spec.rb']
# end
# RSpec::Core::RakeTask.new(:rcov) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rcov = true
# end

RSpec::Core::RakeTask.new(:spec) do |t|
  desc 'Run all RSpec code'
  t.pattern    = 'spec/**/*_spec.rb'
  t.rspec_opts = '-t ~skip'
end

task default: :spec
