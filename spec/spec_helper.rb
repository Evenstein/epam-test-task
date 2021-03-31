# frozen_string_literal: true

Dir[File.expand_path(File.join(File.dirname(__FILE__), 'support', '**', '*.rb'))]
  .each { |f| require f }

RSpec.configure do |config|
  config.color = true
end
