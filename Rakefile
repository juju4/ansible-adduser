require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'test/integration/default/serverspec/*_spec.rb'
end

task :default => :spec

