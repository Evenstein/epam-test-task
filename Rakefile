# frozen_string_literal: true

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test)

task default: :test

desc 'Run file parser'
task :run do
  _, *args = ARGV
  ruby "-Ilib ./bin/process_file #{args[0]}"
  exit
end
