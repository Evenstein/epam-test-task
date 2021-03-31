# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Rake is a Make-like program implemented in Ruby
gem 'rake'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Testing library
  gem 'rspec-rails', '~> 4.0.0'
  # Helper for writing factories
  gem 'factory_bot', '~> 6.1.0'
  # Library for generating fake data
  gem 'faker', '~> 2.12.0'
end

group :development do
  # A Ruby static code analyzer and formatter, based on the community Ruby style guide.
  gem 'rubocop', '~> 1.11', require: false
  # Code style checking for RSpec files
  gem 'rubocop-rspec', '~> 2.2.0', require: false
end
